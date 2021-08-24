<template>
  <div class="workedu">
    <h2>Work</h2>
    <table class="styled-table">
      <tbody>
        <tr>
          <td class="left-col">2020-Now</td>
          <td class="right-col">
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
          <td class="left-col">2020-2021</td>
          <td class="right-col">
            Tiki-media
            <div class="additional-info">
              <ul>
                <li>Full stack developer</li>
                <li>Frontend: Ionic/Angular</li>
                <li>Backend: GoLang</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td class="left-col">2019-2020</td>
          <td class="right-col">
            Intellifinder, Consultant, Software developer
            <div class="additional-info">
              <ul>
                <li>Security</li>
                <li>PHP Development</li>
                <li>MongoDB optimization</li>
                <li>OAuth2/OpenID Connect</li>
              </ul>
            </div>
          </td>
        </tr>
        <flipper-row class="second-row"> </flipper-row>
        <tr>
          <td class="left-col">2018-Now</td>
          <td class="right-col">
            Kluboplevelser,CTO, Developer
            <div class="additional-info">
              <ul>
                <li>Python (Odoo plugin)</li>
                <li>Django</li>
                <li>MySQL</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr class="second-row">
          <td class="left-col">2014-Now</td>
          <td class="right-col">
            Tellie.dk, Software programmer / co-owner
            <div class="additional-info">
              <ul>
                <li>Project lead</li>
                <li>Golang</li>
                <li>Elastic Search</li>
                <li>PHP</li>
                <li>Python</li>
                <li>C++</li>
                <li>Bash</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td class="left-col">2010-2014</td>
          <td class="right-col">
            Virtuad, CTO, programmer and prototype developer
            <div class="additional-info">
              <ul>
                <li>Project development and leading</li>
                <li>OpenCV Programming (in C++)</li>
              </ul>
            </div>
          </td>
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
  table-layout: fixed;
  overflow: hidden;
  word-wrap: break-word;
}

td .left-col {
  width: 30%;
}

td .right-col {
  width: 70%;
}

.additional-info {
  display: none;
}
td:hover .additional-info, td:active .additional-info {
  overflow: hidden;
  display: inline;
  word-wrap: break-word;
  display: block;
}
</style>
