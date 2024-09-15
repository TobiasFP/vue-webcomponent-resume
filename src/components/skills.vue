<template>
  <div>
    <h2>Kompetencer</h2>
    <table>
      <th class="name" >Arbejdsområder</th>
      <th class="niveau">Niveau</th>
      <th class="xp">Antal års erfaring</th>
      <th class="lastused">Sidst brugt</th>
      <tr v-for="skill in skills" v-bind:key="skill">
        <td class="name" >
          {{ skill.name }}
        </td>
        <td class="niveau">
          {{ skill.niveau }}
        </td>
        <td class="xp">
          {{ skill.experience }}
        </td>
        <td class="lastused">
          {{ skill.last_utilized }}
        </td>
      </tr>
    </table>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

interface skill {
  name: string;
  niveau: number;
  experience: number;
  last_utilized: number;
}

@Component
export default class skills extends Vue {
  skills: Array<skill> = [
    {
      name: "test",
      niveau: 3,
      experience: 7,
      last_utilized: 2024,
    }
  ];
  mounted(): void {
    console.log("Mounted");
  }

}
</script>

<style scoped>
table {
  border-collapse: collapse;
  table-layout: fixed;
  align-content: left;
  width: 100%;
}

th { 
  text-align: left;
  padding-left: 5px;
}
td {
    padding: 5px;
}

tr:nth-of-type(odd) {
  background-color: "#ebeff8";
  background: #ebeff8;
}

.name {
  width: 44%;
}

.niveau {
  width: 20%;
}
.xp {
  width: 20%;
}
.lastused {
  width: 16%;
}
</style>
