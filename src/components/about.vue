<template>
  <div>
    <h2>PERSONLIG PROFIL</h2>
    <p>
      Jeg er en særdeles dygtig fullstack udvikler med fokus på cloud native
      solutions, cyber security og test driven development, som sikrer kvalitets
      løsninger der både er robuste og sikre. Jeg har stor erfaring med DevOps
      processer, CI/CD pipelines (Drone, Artifactory, github/gitea actions) og
      robust design af kritisk infrastruktur. Jeg har god erfaring med især AWS
      og Google Cloud, og jeg kan fint navigere i Azure. Jeg er dygtig til at
      levere DevOps produkter som alle kan finde ud af at bruge, da jeg primært
      har fokus på backend services, men snildt kan lave en god frontend vha.
      Især Angular, Vue og visualiseringsværktøjer som Grafana og Kibana.
    </p>
    <p>
      Jeg er agnostisk ift. Microservices (GoLang, Python), serverless
      infrastruktur (AWS Lambda) samt Monolithic services (Dotnet, GoLang).
    </p>
    <p>
      Som problem solver ved jeg at det vigtigste værktøj jeg har er min evne
      til at kommunikere, hvor min evne til at forstå og formidle til både
      tekniske individer, samt almindelige mennesker er essentiel. Derfor
      insisterer jeg også på at være on-site minimum 3 dage om ugen, for selvom
      jeg har fremragende online kommunikationsevner (teams, slack, jira, mail),
      vil der altid opstå mindre misforståelser når der arbejdes online.
    </p>
    <p>
      Af produkter jeg vil fremhæve har jeg for nyligt været project lead på et
      cloud native system til facilitering af robot simulatorer samt robot
      flåder vha. Docker swarm, skrevet i .NET og vue med rå opsætning af DNS
      vha. Traefik docker services, logging i elasticsaerch, data visualisering
      i både kibana og grafana, samt fuld opsætning af CI/CD vha. Gitea actions,
      drone og artifactory. Herudover har jeg stået for komplet cyber sikring af
      et produkt som er brugt af store jernbane aktører hvor NCCGroup stod for
      pentesting. Til denne opgave havde NCCGroup følgende at sige:
    </p>
    <div class="quote">
      Great work resolving all these problems so quickly, I have never seen
      another client fixing so many problems as quickly as you did. You
      obviously really care about securing this application. Kind Regards
      Penetration Tester, NCCGroup
    </div>
    <br />
    <div>
      Jeg er også på freelance portalen worksome, hvor jeg har udelukkende
      positive reviews: <br />
      <a href="https://use.worksome.dk/profile/13900"> Se selv </a>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";

@Component
export default class about extends Vue {}
</script>

<style scoped>
.quote {
  text-decoration: underline;
  font-weight: 1.1;
}
</style>
