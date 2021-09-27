<template>
  <img class="profilepic" src="@/assets/profilepic.jpeg" />
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class profilepic extends Vue {
  @Prop() private msg!: string;
}
</script>

<style scoped>
.profilepic {
  width: 100%;
  filter: drop-shadow(15px 10px 4px #c2c2c2);
}
</style>
