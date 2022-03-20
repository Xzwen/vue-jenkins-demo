<template>
  <div class="home">
    <div>{{me}}</div>
  <about :aa="'bbbbb'" :fn='fn' :obj="state"></about>
  <flash></flash>
    <div v-for="(item, index) in state.list" :key="index">
      <div>{{item.name}}</div>
    </div>
    ............
    <div>
      {{state.obj.name}},{{state.obj.label}}
    </div>
    <div >{{state.obj.heat('vinter')}}</div>
  </div>
</template>

<script lang="ts">
import { defineComponent, onBeforeMount, reactive, ref } from "vue";
enum Kinds {
  aa,
  bb,
  cc,
  dd = "谢志文"
}

interface Lists {
  name: string;
  ha?: string;
}
interface Objs {
  label: string;
  eat(aa: string): void;
  heat(vv: string): string | number;
  name?: string;
}
export default defineComponent({
  name: "Home",
  props: {
    name: {
      type: String
    },

  },
  setup(props, { emit }) {
    const me = ref("mes");

    let list: Lists[] = [];
    let obj: Objs = {
      label: "",
      eat: cc => {
        console.log(cc);
      },
      heat: vv => ""
    };

    let state = reactive({
      list: [] as Lists[],
      obj: {} as Objs
    });

    onBeforeMount(() => {
      state.list = [
        {
          name: "sfdjklfdgf",
          ha: "sdf",
        },
        {
          name: "sfdjklfdgf"
        }
      ];
      state.obj = {
        label: "label",
        eat: cc => {
          me.value = cc;
          console.log(cc, 11111);
        },
        heat: vv=>1234,
        name: "sfsdf"
      };
    });
    return {
      state,
      list,
      me,
      fn: (aa: string) => {
        me.value = aa
      }
    };
  },
  components: {}
});
</script>


<style lang="scss" scoped>
// ::v-deep .home-inner {
//   color: red;
// }
</style>
