<script>
export default {
  name: "App",
  components: {},

  data: () => ({
    tab: null,
  }),
};
</script>

<template>
  <v-app style="background-color: #000000; align-items: center; align-self: center; justify-content: center;">
    <v-app-bar
      style="
        resize: none !important;
        justify-content: center;
        align-items: center;
        display: flex;
      "
      app
      short
      height="70px"
      shrink-on-scroll
      outlined
      elevate-on-scroll
      color="#000000"
      elevation="4"
      dark
    >
      <v-tabs v-model="tab" centered dark>
        <v-tab href="#home"> HOME </v-tab>
        <v-tab href="#aboutme"> ABOUT ME </v-tab>
        <v-tab href="#sav"> SAV </v-tab>
        <v-tab href="#photography"> PHOTOGRAPHY </v-tab>
        <v-tab href="#droptimer"> DROPTIMER </v-tab>
      </v-tabs>
    </v-app-bar>

    <v-tabs-items
      style="
        align-self: center;
        align-items: center;
        justify-content:center;
      "
      v-model="tab"
    >
      <v-tab-item value="home" style="align-items:center;">
        <v-sheet height="1380" width="100vw" color="#000000" style="align-self:center">
          <div class="greeting">
            <h1 class="texthome">home</h1>
          </div>
        </v-sheet>
      </v-tab-item>
      <v-tab-item value="aboutme">
        <v-sheet height="1380" width="100vw" color="#000000">
          <div class="greeting">
            <h1 class="texthome">aboutme</h1>
          </div>
        </v-sheet>
      </v-tab-item>
      <v-tab-item value="sav">
        <v-sheet height="1380" width="100vw" color="#000000">
          <div class="greeting">
            <h1 class="texthome">sav</h1>
          </div>
        </v-sheet>
      </v-tab-item>
      <v-tab-item value="photography">
        <v-sheet height="1380" width="100vw" color="#000000">
          <div class="greeting">
            <h1 class="texthome">photography</h1>
          </div>
        </v-sheet>
      </v-tab-item>
      <v-tab-item value="droptimer">
        <v-sheet height="1280" width="100vw" color="#000000">
          <div class="greeting">
            <h1 class="texthome">droptimer</h1>
          </div>
        </v-sheet>
      </v-tab-item>
    </v-tabs-items>
  </v-app>
</template>

<style>
.texthome {
  margin-top: 4em;
  position: relative;
  color: white;
}

.greeting {
  display: flex;
  flex-direction: column;
  align-items: center;
  font-size: 50px;
}

</style>
