<template>
  <div id="app">
    test
    <h1>{{ title }}</h1>
    <p>{{ subtitle }}</p>
    <CV />
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";
import CV from "./components/CV.vue";
@Component({
  components: {
    CV,
  },
})
export default class App extends Vue {
  @Prop() private title!: string;
  @Prop() private subtitle!: string;
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
