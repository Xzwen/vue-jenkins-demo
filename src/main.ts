import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import componet from './components/index'
// App.use(componet)

createApp(App).use(componet).use(store).use(router).mount('#app')
