import Esbuild from "esbuild";

Esbuild.build({
  entryPoints: ["index.ts"],
  bundle: true,
  outfile: 'dist/out.js',
  minify: true,
  sourcemap: true,
  platform: "node",
  format: 'esm',
  target: ['node16.6'],
  external: ['./node_modules/*'],
}).catch((e) => {
  console.log(e);
  process.exit(1);
});
