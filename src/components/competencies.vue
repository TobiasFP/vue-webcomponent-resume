<template>
  <div>
    <h2>Primære kompetencer</h2>
    <div class="competency" v-for="competency in IAmGoodAt" v-bind:key="competency"> {{ competency }}</div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class competencies extends Vue {
  data() {
    const IAmGoodAt = ["Docker (Swarm, buildx)", "Sikkerhed", "DevOps", "CI/CD", "GitOps", "Automatisering", "JiraOps"];
    return { IAmGoodAt };
  }
}
</script>

<style scoped>
.competency {
  background-color: "#ebeff8";
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 12px;
  border: solid 1px #ebeff8;
  text-shadow: 0 -1px 0 #ebeff8;
  background: #ebeff8;
  color: #1e63bf;
  padding: 8px 12px;
  margin: 6px 6px;
  text-decoration: none;
  display: inline-block;
}
</style>
