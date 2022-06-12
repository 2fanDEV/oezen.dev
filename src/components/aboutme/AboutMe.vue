<script>
import CardTemplate from "../misc/CardTemplate.vue";

export default {
  name: "about-me",
  components: { CardTemplate },
  methods: {},
  data: () => ({
    tab: 1,
    backend: process.env.VUE_APP_BACKEND_IP,
    minio: process.env.VUE_APP_BACKEND_MINIO_API
  }),
};
</script>

<template>
  <div class="flexbox">
    <div class="aboutme">
      <card-template
        :title="'About Me'"
        :passClass="'introduction'"
        :texts=" backend + minio + '/textfile/texts/file/aboutme.txt'"
      ></card-template>
    </div>
    <div>
      <card-template class="university"
        :title="'University'"
        :passClass="'university'"
        :texts="minio + '/textfile/texts/file/university.txt'"></card-template>
    </div>
  </div>
</template>

<style>
.flexbox {
  display: flex;
  margin-top: 10%;
  gap: 5%;
}


</style>
