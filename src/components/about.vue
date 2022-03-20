<template>
    <div>
        <div @click="fn('sf')">sfaf</div>
        <div>{{obj.obj.name}}</div>
    </div>
</template>

<script lang="ts">
import { defineComponent, onBeforeMount, reactive, ref } from "vue";
export default defineComponent({
  name: "about",
  props: {
      fn: {
          type: Function
      },
      obj: {
          type: Object
      }
  },
  setup(props, { emit }) {
    const me = ref("mes");
    return {
      me
    };
  },
});
</script>