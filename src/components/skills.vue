<template>
  <canvas id="skills" />
</template>

<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

interface axis_starting_point {
  number: number;
  suffix: string;
}

@Component
export default class skills extends Vue {
  @Prop() private msg!: string;
  grid_size = 30;
  x_axis_distance_grid_lines = 1;
  y_axis_distance_grid_lines = 1;
  x_axis_starting_point: axis_starting_point = { number: 1, suffix: "\u03a0" };
  y_axis_starting_point: axis_starting_point = { number: 1, suffix: "" };
  num_lines_x = 0;
  num_lines_y = 0;
  mounted() {
    this.initCanvas();
  }
  initCanvas() {
    const canvas: HTMLCanvasElement = document.getElementById(
      "skills"
    ) as HTMLCanvasElement;
    this.num_lines_x = Math.floor(canvas.height / this.grid_size);
    this.num_lines_y = Math.floor(canvas.width / this.grid_size);

    const ctx = canvas.getContext("2d");
    if (ctx) {
      this.drawXY(canvas, ctx);
      this.drawTickMarks(ctx);
          ctx.translate(this.y_axis_distance_grid_lines*this.grid_size, this.x_axis_distance_grid_lines*this.grid_size);1
    }
  }

  drawXY(canvas: HTMLCanvasElement, ctx: CanvasRenderingContext2D) {
    for (let i = 0; i <= this.num_lines_x; i++) {
      ctx.beginPath();
      ctx.lineWidth = 1;

      // If line represents X-axis draw in different color
      if (i == this.x_axis_distance_grid_lines) ctx.strokeStyle = "#000000";
      else ctx.strokeStyle = "#e9e9e9";

      if (i == this.num_lines_x) {
        ctx.moveTo(0, this.grid_size * i);
        ctx.lineTo(canvas.width, this.grid_size * i);
      } else {
        ctx.moveTo(0, this.grid_size * i + 0.5);
        ctx.lineTo(canvas.width, this.grid_size * i + 0.5);
      }
      ctx.stroke();
    }

    for (let i = 0; i <= this.num_lines_y; i++) {
      ctx.beginPath();
      ctx.lineWidth = 1;

      // If line represents Y-axis draw in different color
      if (i == this.y_axis_distance_grid_lines) {
        ctx.strokeStyle = "#000000";
      } else {
        ctx.strokeStyle = "#e9e9e9";
      }

      if (i == this.num_lines_y) {
        ctx.moveTo(this.grid_size * i, 0);
        ctx.lineTo(this.grid_size * i, canvas.height);
      } else {
        ctx.moveTo(this.grid_size * i + 0.5, 0);
        ctx.lineTo(this.grid_size * i + 0.5, canvas.height);
      }
      ctx.stroke();
    }
  }

  drawTickMarks(ctx: CanvasRenderingContext2D) {
    // Ticks marks along the positive X-axis
    for (
      let i = 1;
      i < this.num_lines_y - this.y_axis_distance_grid_lines;
      i++
    ) {
      ctx.beginPath();
      ctx.lineWidth = 0.3;
      ctx.strokeStyle = "#000000";

      // Draw a tick mark 6px long (-3 to 3)
      ctx.moveTo(this.grid_size * i + 0.5, -3);
      ctx.lineTo(this.grid_size * i + 0.5, 3);
      ctx.stroke();

      // Text value at that point
      ctx.textAlign = "start";
      ctx.fillText(
        this.x_axis_starting_point.number * i +
          this.x_axis_starting_point.suffix,
        this.grid_size * i - 2,
        15
      );
    }

    // Ticks marks along the negative X-axis
    for (let i = 1; i < this.y_axis_distance_grid_lines; i++) {
      ctx.beginPath();
      ctx.lineWidth = 0.3;
      ctx.strokeStyle = "#000000";

      // Draw a tick mark 6px long (-3 to 3)
      ctx.moveTo(-this.grid_size * i + 0.5, -3);
      ctx.lineTo(-this.grid_size * i + 0.5, 3);
      ctx.stroke();

      // Text value at that point
      ctx.textAlign = "end";
      ctx.fillText(
        -this.x_axis_starting_point.number * i +
          this.x_axis_starting_point.suffix,
        -this.grid_size * i + 3,
        15
      );
    }
  }
}
</script>

<style scoped>
#skills {
  height: 40vh;
  width: 100%;
}
</style>
