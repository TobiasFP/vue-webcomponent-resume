<template>
  <div class="contact">
    <ul class="contactinfo">
      <li>
        <font-awesome-icon icon="person-booth" />Tobias Feldballe Petersen
      </li>
      <li><font-awesome-icon icon="mobile" /> +45 51968275</li>
      <li><font-awesome-icon icon="envelope-open" /> tobias@osandweb.dk</li>
      <li><font-awesome-icon icon="mobile" /> TobiasFeldballe</li>
    </ul>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class contact extends Vue {}
</script>

<style scoped>
.contactinfo {
  list-style-type: none;
}
</style>
