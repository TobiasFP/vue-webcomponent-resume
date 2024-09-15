<template>
  <div>
    <h2>Kompetencer</h2>
    <div class="bigScreenSkills">
      <button @click="resize()">
        <div ref="skills" id="skills"></div>
      </button>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";
import Two from "twojs-ts";

interface skill {
  name: string;
  experience: number;
}

@Component
export default class skills extends Vue {
  @Prop() private msg!: string;
  skillWidth = 900;
  skillHeight = 600;
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  two: Two;

  FiverSkills: Array<skill> = [
    { name: "Typescript", experience: 5 },
    { name: "Communication", experience: 5 },
    { name: "TDD", experience: 5 },
  ];
  FourSkills: Array<skill> = [
    { name: "Python", experience: 4 },
    { name: "GoLang", experience: 4 },
    { name: "Angular", experience: 4 },
    { name: "Ionic", experience: 4 },
    { name: "HTML5", experience: 4 },
    { name: "Docker", experience: 4 },
  ];
  ThreeSkills: Array<skill> = [
    { name: "PHP8", experience: 3 },
    { name: "Mysql", experience: 3 },
    { name: "AWS Lambda", experience: 3 },
    { name: "AWS S3", experience: 3 },
    { name: "Elastic Search", experience: 3 },
    { name: "CSS3", experience: 3 },
    { name: "Flask", experience: 3 },
  ];
  TwoSkills: Array<skill> = [
    { name: "Django", experience: 2 },
    { name: "C#", experience: 2 },
    { name: "Kubernetes", experience: 2 },
    { name: "AWS Cloudfront", experience: 2 },
  ];
  OneSkills: Array<skill> = [
    { name: "Design", experience: 1 },
    { name: ".NET Core", experience: 1 },
  ];

  mounted(): void {
    if (window.innerWidth < 900) {
      this.skillWidth = window.innerWidth * 0.9;
    }
    const elem: HTMLDivElement = this.$refs.skills as HTMLDivElement;
    this.two = new Two({
      width: this.skillWidth,
      height: this.skillHeight,
    }).appendTo(elem);
    this.createCoordinateSystem();
    this.createSkills();
    this.two.update();
  }

  createCoordinateSystem(): void {
    const background = this.two.makeRectangle(
      900 / 2,
      this.skillHeight / 2,
      900,
      this.skillHeight
    );
    background.linewidth = 0;
    background.fill = "#f3f3f3";

    const yAxis = this.two.makeLine(100, 0, 100, this.skillHeight);
    yAxis.linewidth = 2;
    const levels: Array<string> = [
      "",
      "Decent",
      "All right",
      "Well",
      "Good",
      "Awesome",
    ];
    for (let i = 1; i < 6; i++) {
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      const text = this.two.makeText(
        levels[i],
        50,
        this.skillHeight - i * 100,
        null
      );
      text.size = 20;
    }
  }

  createSkills(): void {
    const allSkills: Array<Array<skill>> = [
      this.FiverSkills,
      this.FourSkills,
      this.ThreeSkills,
      this.TwoSkills,
      this.OneSkills,
    ];
    allSkills.forEach((skills, upperIndex) => {
      setTimeout(() => {
        skills.forEach((skill, index) => {
          setTimeout(() => {
            this.createSkill(
              50 + 100 * (index + 1),
              this.skillHeight - skill.experience * 100,
              skill.name
            );
          }, 600 * index);
        });
      }, 900 * upperIndex);
    });
  }

  createSkill(x: number, y: number, skillName: string): void {
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    const text = this.two.makeText(skillName, 0, 0, null);
    text.size = 20;
    text.rotation = 0.25 * Math.PI;
    const circle = this.two.makeCircle(0, 0, 45);
    circle.fill = "#3880ff";
    circle.opacity = 0.2;
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    const group = this.two.makeGroup(circle, text);
    group.translation.set(x, y);

    group.scale = 0;

    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    this.two
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      .bind("update", () => {
        group.scale += (1 - group.scale) * 0.03;
      })
      .play();
  }

  resize(): void {
    if (window.innerWidth < 900) {
      this.two.width = 900;
    }
    document.documentElement.requestFullscreen();
    screen.orientation.lock("landscape");
  }
}
</script>

<style>
@media only screen and (max-width: 720px) {
  .bigScreenSkills {
    display: none;
  }
}
</style>
