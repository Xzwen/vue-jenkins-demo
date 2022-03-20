<template>
  <div id="nav">
    <router-view/>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'
export default defineComponent({
  // setup() {
  //   onMounted(()=> {
  //     const script:any = document.createElement("script")
  //     script.type = "text/javascript"
  //     script.src = "http://res2.wx.qq.com/open/js/jweixin-1.6.0.js"
  //     document.body.appendChild(script)
  //     console.log(script)
  //   })
  // }
})
</script>


<style lang="scss">
body {
  padding: 0;
  margin: 0;
}
</style>
