
<script>

import CardTemplate from "../misc/CardTemplate.vue";

export default {
  name: "about-me",
  components: { CardTemplate },
  methods: {},
  data: () => ({
    tab: 1,
    minio: process.env.VUE_APP_MINIO_IP,
  }),
};
</script>

<template>
  <div>
    <div class="aboutme">
      <card-template
        :title="'About Me'"
        :passClass="'introduction'"
        :texts="minio + '/texts/aboutme.txt'"
      ></card-template>
    </div>
  </div>
</template>

<style>
.aboutme {
  margin-top: 5em;
  margin-right: 25em;
}
</style>
