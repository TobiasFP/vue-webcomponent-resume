<template>
  <div id="app">
    <div class="header">
      <heads class="header-inner">
      </heads>
    </div>
    <about class="about"> </about>
    <competencies class="competencies"> </competencies>
    <!-- <div class="profile-pic">
      <flipper class="profile">
        <template v-slot:front>
          <profilepic />
        </template>
<template v-slot:back>
          <contact />
        </template>
</flipper>
</div> -->
    <div class="skills">
      <skills> </skills>
    </div>
    <div class="workedu">
      <work-edu> </work-edu>
    </div>
    <div class="foots">
      <foots class="foots-inner"> </foots>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import profilepic from "./components/profilepic.vue";
import contact from "./components/contact.vue";
import flipper from "./components/global/flipper.vue";
import about from "./components/about.vue";
import WorkEdu from "./components/workEdu.vue";
import competencies from "./components/competencies.vue";
import skills from "./components/skills.vue";
import heads from "./components/heads.vue";
import foots from "./components/foots.vue";

@Component({
  components: {
    heads,
    profilepic,
    contact,
    flipper,
    about,
    WorkEdu,
    skills,
    foots,
    competencies
  },
})
export default class App extends Vue { }
</script>

<style>
#app {
  font-family: barlow;
  display: grid;
  grid-template-columns: repeat(12, 1fr);
}

h2 {
  color: yellow;
}

@media only screen and (max-width: 720px) {
  #app {
    grid-template-rows: 1fr 1fr;
    margin: 10px;
  }

  .header {
    grid-column: 1/12;
    grid-row: 1;
  }

  .profile-pic {
    grid-row: 2;
    grid-column: 5/9;
  }

  .about {
    grid-column: 1/12;
    grid-row: 3;
  }

  .competencies {
    grid-column: 1/12;
    grid-row: 4;
  }

  .skills {
    grid-column: 1/12;
    grid-row: 5;
  }

  .workedu {
    grid-column: 1/12;
    grid-row: 6;
  }
}

@media only screen and (max-width: 500px) {
  .profile-pic {
    grid-row: 1;
    grid-column: 4/10;
  }
}

@media only screen and (max-width: 400px) {
  .profile-pic {
    grid-row: 1;
    grid-column: 2/12;
  }
}

@media only screen and (min-width: 721px) {
  #app {
    gap: 30px;
  }

  .header {
    grid-column: 1/12;
    grid-row: 1;
    background-color: #094293;
    color: white;
  }

  .header-inner {
    margin-left: 9%;
  }

  .foots {
    grid-column: 1/12;
    grid-row: 5;
    background-color: #788da8;
    color: white;
  }

  .foots-inner {
    margin-left: 9%;
  }

  .profile-pic {
    grid-column: 10/12;
    width: 100px;
    height: 100px;
    position: relative;
  }

  .about {
    grid-column: 2/10;
    grid-row: 2;
  }


  .profile {
    height: 200px;
    width: 200px;
  }

  .competencies {
    grid-column: 2/10;
    grid-row: 3;
  }

  .skills {
    width: 100%;
    grid-column: 2/10;
    grid-row: 4;
    margin-bottom: 30px;
  }

  .workedu {
    grid-column: 2/10;
    grid-row: 5;
  }
}
</style>
