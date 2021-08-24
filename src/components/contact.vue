<template>
  <div class="contact">
    <div class="contact-segment">
      <font-awesome-icon icon="address-card" />
      Tobias Feldballe
    </div>
    <div class="contact-segment">
      <font-awesome-icon icon="mobile-alt" />
      +45 51968275
    </div>
    <div class="contact-segment">
      <font-awesome-icon icon="at" />
      tobias@osandweb.dk
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class contact extends Vue {}
</script>

<style scoped>
.contact {
  width: 100%;
  margin: 10%;
  height: 100%;
}

.contact-segment {
  margin-top: 15px;
}
</style>
