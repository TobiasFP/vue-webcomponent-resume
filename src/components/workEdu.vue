<template>
  <div class="workedu">
    <h2>Work</h2>
    <table class="styled-table">
      <tbody>
        <tr>
          <td>2020-Now</td>
          <td>
            Jumpstory, Software developer
            <div class="additional-info">
              <ul>
                <li>PHP7</li>
                <li>Vue (Typescript, Javascript)</li>
                <li>Machine learning</li>
                <li>ElasticSearch</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr class="second-row">
          <td>2020-2021</td>
          <td>
            Tiki-media
            <div class="additional-info">
              <ul>
                <li>Full stack developer, Ionic/Angular, GoLang</li>
                <li>
                  Sole developer, creating a backend (GoLang) to serve a
                  multiple-choice style game (Ionic, Angular, WebGL) which was
                  both an app on IOS/Android, and a webapp.
                </li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <flipper-row class="second-row"> </flipper-row>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr class="second-row">
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
        <tr class="second-row">
          <td></td>
          <td></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component({
  components: {},
})
export default class WorkEdu extends Vue {}
</script>

<style scoped>
.styled-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  font-family: sans-serif;
  min-width: 80vw;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
  font-weight: bold;
}

.styled-table th,
.styled-table td {
  padding: 12px 15px;
}

.styled-table tbody tr {
  border-bottom: 1px solid #dddddd;
  color: #009879;
}

.styled-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

td {
  vertical-align: top;
}

.additional-info {
  display: none;
}
td:hover .additional-info {
  display: block;
}
</style>
