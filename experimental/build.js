import Esbuild from "esbuild";

Esbuild.build({
  entryPoints: ["index.ts"],
  // bundle: true,
  outfile: 'dist/out.js',
  // minify: true,
  sourcemap: false,
  platform: "node",
  format: 'esm',
  target: ['node16.6'],
}).catch((e) => {
  console.log(e);
  process.exit(1);
});
