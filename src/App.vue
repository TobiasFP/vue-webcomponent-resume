<template>
  <div id="app">
    <about class="about"> </about>
    <div class="profile-pic">
      <action class="hover-action"> </action>
      <flipper class="profile">
        <template v-slot:front>
          <profilepic />
        </template>
        <template v-slot:back>
          <contact />
        </template>
      </flipper>
    </div>
    <div class="workedu">
      <work-edu> </work-edu>
    </div>
    <div class="skills">
      <!-- <skills> </skills> -->
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import profilepic from "./components/profilepic.vue";
import contact from "./components/contact.vue";
import flipper from "./components/global/flipper.vue";
import skills from "./components/skills.vue";
import about from "./components/about.vue";
import WorkEdu from "./components/workEdu.vue";
import action from "./components/global/action.vue";

@Component({
  components: {
    profilepic,
    contact,
    flipper,
    skills,
    about,
    WorkEdu,
    action,
  },
})
export default class App extends Vue {}
</script>

<style scoped>
#app {
  font-family: "Ubuntu mono", "Droid sans", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
}

#app {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
}

@media only screen and (max-width: 720px) {
  .profile-pic {
    grid-row: 1;
    grid-column: 4/8;
  }
  .about {
    grid-column: 1/12;
    grid-row: 2;
  }
  .skils {
    grid-column: 1/12;
    grid-row: 3;
  }
  .workedu {
    grid-column: 1/12;
    grid-row: 4;
  }
}

@media only screen and (min-width: 721px) {
  #app {
    gap: 30px;
  }

  .about {
    grid-column: 2/10;
  }

  .profile-pic {
    grid-column: 10/12;
  }
  .workedu {
    width: 100%;
    height: 10px;
    grid-column: 2/10;
    grid-row: 2;
  }
  .skills {
    width: 100%;
    height: 10px;
    grid-column: 2/10;
    grid-row: 3;
  }
}

.profile-pic {
  width: 100px;
  height: 100px;
  position: relative;
}

.profile {
  height: 200px;
  width: 200px;
}
.hover-action {
  position: absolute;
  z-index: 10;
  width: 30px;
}
</style>
