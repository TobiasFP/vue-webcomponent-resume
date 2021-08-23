<template>
  <div class="action" ref="action">
    <img class="action-img" src="@/assets/action.png" />
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component({
  components: {},
})
export default class action extends Vue {
  mounted() {
    console.log(this.$refs["action"]);
    //   this.$refs["input"].focus()
    //   const images = document.querySelector('.images');

    // images.addEventListener('mouseover', changeDefOver);
  }
}
</script>

<style scoped>
.action-img {
  width: 100px;
}

.action {
  margin-left: 50%;
  margin-top: 50%;
  transform: translate(-50%, -50%);
  opacity: 0.3;
  animation-name: stretch;
  animation-duration: 2s;
  animation-timing-function: ease-out;
  animation-direction: alternate;
  animation-iteration-count: infinite;
  animation-play-state: running;
}

@keyframes stretch {
  0% {
    transform: scale(0.9);
  }

  100% {
    transform: scale(1.1);
  }
}
</style>
