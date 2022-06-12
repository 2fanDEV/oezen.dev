<script>
export default {
  name: "cardTemplate",
  components: {},

  props: ["texts", "passClass", "title"],

  methods: {
    async getMinioText(filePath) {
      let response = await fetch(filePath);

      if (response.status != 200)
        throw new Error("Server Error: Resource not found");

      return response.text();
    },

    getText(filePath) {
      this.getMinioText(filePath).then(
        (result) => {
        this.aboutMeText = result;
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },

  beforeMount() {
    this.getText(this.texts);
  },

  data: () => ({
    tab: 1,
    aboutMeText: " ",
  }),
};
</script>

<template>
  <v-card shaped tile outlined elevation="2" :class="this.passClass">
    <v-card-title>
      {{this.title}}
    </v-card-title>
    <v-card-text>
    {{ aboutMeText }}
    </v-card-text>
  </v-card>
</template>

<style>

.university {
  white-space: pre !important;
  font-size: 0.5em;
  width: 15em;
  opacity: 0%;
  animation-timing-function: fadeIn 1s ease-in-out 2s;
  animation-name: university;
  animation-fill-mode: forwards;
  animation-duration: 1.5s;
  animation-delay: 1.5s;
}

.introduction {
  white-space: pre !important;
  font-size: 0.5em;
  width: 15em;
  opacity: 0%;
  animation-timing-function: fadeIn 1s ease-in-out 2s;
  animation-name: introduction;
  animation-fill-mode: forwards;
  animation-duration: 1.5s;
  animation-delay: 0.5s;
}

@keyframes introduction {
  from {
    opacity: 0%;
    height: 0em;
    margin-top: -5%;
  }
  to {
    opacity: 100%;
    height: 11.5em;
    margin-top: 3%;
  }
}

@keyframes university {
  from {
    opacity: 0%;
    height: 0em;
    margin-top: -2%;
  }
  to {
    opacity: 100%;
    height: 17em;
    margin-top: 3%;
  }
}
</style>
