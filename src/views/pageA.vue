<template>
    <div class="pageA">
        页面A
        <button @click="navigateHandle">去页面B</button>
    </div>
</template>

<script lang="ts">

import { defineComponent } from 'vue'
// import { useRouter } from 'vue-router'
import wx from 'weixin-js-sdk';
export default defineComponent({
    setup() {
        // const router = useRouter()
        const navigateHandle = () => {
            // router.push({
            //     name: 'PageB',
            //     query: {
            //         title: '页面B'
            //     }
            // })
            // console.log(wx, '1111111')
            let obj:any = {
                params: "vinter",
                title: "谢志文"
            }
            
            console.log(JSON.stringify(obj))
            wx.miniProgram.navigateTo({
                url: `/pages/mine/detail/index?params=${escape(JSON.stringify(obj))}`,
            })
        }
        return {
            navigateHandle
        }
    }
})
</script>


<style lang="scss" scoped>
</style>