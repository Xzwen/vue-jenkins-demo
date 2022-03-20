import flash from './flash.vue'
import about from './about.vue'
const componnets:any[] = []
const bbb = require.context('@/components', true, /\.vue$/)

bbb.keys().map(item => {
    componnets.push(bbb(item).default)
})

export default {
    install(Vue:any) {
        componnets.map(item => Vue.component(item.name, item))        
    }
}