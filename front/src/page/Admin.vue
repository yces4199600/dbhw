<template>
  <span v-if="!show">
    現在的使用者是{{USER}}
  </span>
  <Carousel/>
  <Card/>
</template>

<script>

import Carousel from '@/components/Carousel.vue'
import Card from '@/components/ItemCard.vue'



export default {
  name: "Admin",
  data() {
    return {
    }
  },
  computed: {
    USER: function () {
      return this.$route.params.USER
    },
    show: function(){
      return this.$route.params.USER==null
    },
  },
  components: {
    Carousel,
    Card,
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
