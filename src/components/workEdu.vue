<template>
  <div class="workedu">
    <h2>Work</h2>
    <table class="styled-table">
      <tbody>
        <tr>
          <td class="left-col">2021-NOW</td>
          <td class="right-col">
            Mobile Industrial Robots, DevOps Engineer, Embedded test developer
            <div class="additional-info">
              <ul>
                <li>CI/CD</li>
                <li>Dotnet</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td class="left-col">2020-2021</td>
          <td class="right-col">
            Jumpstory, Software developer
            <div class="additional-info">
              <ul>
                <li>Python</li>
                <li>MySql</li>
                <li>Laravel/PHP8</li>
                <li>Vue (Typescript, Javascript)</li>
                <li>Machine learning</li>
                <li>ElasticSearch</li>
                <li>Aws (Cloudfront, Lambda, S3, EC2)</li>
                <li>Docker</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td class="left-col">2020</td>
          <td class="right-col">
            Laban, Software developer
            <div class="additional-info">
              <ul>
                <li>Python</li>
                <li>Javascript</li>
                <li>Data mining</li>
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
                <li>DevOps</li>
                <li>CodeIgniter/PHP7</li>
                <li>Angular (Typescript, Javascript)</li>
                <li>MongoDB optimization</li>
                <li>OAuth2/OpenID Connect</li>
                <li>Docker/Kubernetes</li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td class="left-col">2018-Now</td>
          <td class="right-col">
            Kluboplevelser,CTO, Developer
            <div class="additional-info">
              <ul>
                <li>Python</li>
                <li>Django</li>
                <li>MySQL</li>
                <li>Javascript</li>
                <li>Docker/Kubernetes</li>
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
                <li>Python</li>
                <li>Golang</li>
                <li>Docker/Kubernetes</li>
                <li>DevOps</li>
                <li>Elastic Search</li>
                <li>C++</li>
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
  min-width: 100%;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
  font-weight: bold;
}

.styled-table th,
.styled-table td {
  padding: 12px 15px;
  filter: drop-shadow(15px 10px 4px #c2c2c2);
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
td:hover .additional-info,
td:active .additional-info {
  overflow: hidden;
  display: inline;
  word-wrap: break-word;
  display: block;
}
</style>
