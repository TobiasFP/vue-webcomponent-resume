<template>
  <div>
    <h2>Kompetencer</h2>
    <table>
      <th class="name">Arbejdsområder</th>
      <th class="niveau">Niveau</th>
      <th class="xp">Antal års erfaring</th>
      <th class="lastused">Sidst brugt</th>
      <tr v-for="skill in mySkills" v-bind:key="skill">
        <td class="name">
          {{ skill.name }}
        </td>
        <td class="niveau">
          <span
            v-for="index in skill.niveau"
            v-bind:key="index"
            class="dot"
          ></span>
        </td>
        <td class="xp">
          {{ skill.experience }}
        </td>
        <td class="lastused">
          {{ skill.last_utilized }}
        </td>
      </tr>
    </table>
    <table>
      <th class="name">Kompetencer</th>
      <th class="niveau">Niveau</th>
      <th class="xp">Antal års erfaring</th>
      <th class="lastused">Sidst brugt</th>
      <tr v-for="skill in kompetencer" v-bind:key="skill">
        <td class="name">
          {{ skill.name }}
        </td>
        <td class="niveau">
          <span
            v-for="index in skill.niveau"
            v-bind:key="index"
            class="dot"
          ></span>
        </td>
        <td class="xp">
          {{ skill.experience }}
        </td>
        <td class="lastused">
          {{ skill.last_utilized }}
        </td>
      </tr>
    </table>
    <table>
      <th class="name">Programmeringssprog</th>
      <th class="niveau">Niveau</th>
      <th class="xp">Antal års erfaring</th>
      <th class="lastused">Sidst brugt</th>
      <tr v-for="skill in Programmering" v-bind:key="skill">
        <td class="name">
          {{ skill.name }}
        </td>
        <td class="niveau">
          <span
            v-for="index in skill.niveau"
            v-bind:key="index"
            class="dot"
          ></span>
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
import {
  skills as mySkills,
  kompetencer,
  Programmering,
  skill,
} from "@/assets/skills";

@Component
export default class skills extends Vue {
  mySkills: Array<skill> = mySkills;
  kompetencer: Array<skill> = kompetencer;
  Programmering: Array<skill> = Programmering;
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
  width: 50%;
}

.niveau {
  width: 14%;
}

.xp {
  width: 20%;
}

.lastused {
  width: 16%;
}

.dot {
  height: 20px;
  width: 20px;
  background-color: #ff6600;
  border-radius: 50%;
  display: inline-block;
}
</style>
