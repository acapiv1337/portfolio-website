<template>
  <div id="app" @click="unmuteMusic">
    <!-- Full-screen GIF -->
    <div class="gif-fullscreen"></div>

    <!-- Hidden audio element -->
    <audio ref="bgMusic" autoplay loop muted>
      <source src="/bon_voyage_edit.mp3" type="audio/mpeg" />
      Your browser does not support the audio element.
    </audio>
  </div>
</template>

<script>
export default { 
  name: "YoohyeonFullScreen",
  methods: {
    unmuteMusic() {
      const audio = this.$refs.bgMusic;
      if (audio.muted) {
        audio.muted = false;
        audio.play();
      }
    }
  }
};
</script>

<style scoped>
.gif-fullscreen {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background-image: url('/yoohyeon.gif'); /* Replace with your GIF */
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  z-index: 0;
}

#app {
  width: 100vw;
  height: 100vh;
  overflow: hidden;
  position: relative;
  cursor: pointer; /* indicate user can click */
}
</style>
