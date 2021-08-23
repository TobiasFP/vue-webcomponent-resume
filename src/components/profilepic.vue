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
  height: 100%;
}

</style>
