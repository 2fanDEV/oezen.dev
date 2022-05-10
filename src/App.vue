

<script>

export default {
  name: 'App',

  components: {
  },

  data: () => ({
    //
  }),
};
</script>

<template>
  <v-app style="background-color: #BEAFC2">
    <v-app-bar
    style="resize: none !important; justify-content: center; display:flex;"
      app
      dense
      outlined
      elevate-on-scroll
      color="#484C7F"
      elevation="5"
      dark
    >
    
 
    <v-tabs>
      <v-tab> HOME </v-tab>
      <v-tab> ABOUT ME </v-tab>
      <v-tab> SAV </v-tab>
      <v-tab> PHOTOGRAPHY </v-tab>
    </v-tabs>
     </v-app-bar>
    <v-sheet
      style="align-self: center; align-items: center;"
      height="1480"
      width="1280"
      color="#BEAFC2">
    <div class="greeting">
       <h1 class= "texthome">
          Hi an alle.
      </h1>
       <h1 class= "texthome">
        Ich hasse euch und mich alle gleich viel.
        </h1>
         <h1 class= "texthome">
           Work in Progress
        </h1>
         <h1 class= "texthome">
          Schau noch einmal in einer Woche.
        </h1>
    </div>
    </v-sheet>
    </v-app>

</template>


<style>

.texthome {
  margin-top: 0.2%;
  position: relative;
  color: #484C7F;
}

.greeting {
  display: flex;
  margin-top: 25%;
  flex-direction: column;
  align-items: center;
}

.flexgrid {
  display:flex;
  flex-direction: row;
  flex-flow: row;
  margin-left: 50vw;
}
</style>