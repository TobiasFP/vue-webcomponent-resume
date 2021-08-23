<template>
  <div>
    <p1>
      About me1
    </p1>
    <p>
      I am primarily a backend developer, interested in GoLang, MongoDB,
      ElasticSearch, MySQL and information security. My proudest moment was
      summarised by a penetration tester, on a former project:
    </p>
    <div class="quote">
      Great work resolving all these problems so quickly, I have never seen
      another client fixing so many problems as quickly as you did. You
      obviously really care about securing this application. Kind Regards
      Penetration Tester, NCCGroup
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class about extends Vue {}
</script>

<style scoped>
.quote {
  text-decoration: underline;
}
</style>
