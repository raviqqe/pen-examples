import { readFile } from "fs/promises";
import { argv, env } from "process";
import { WASI } from "wasi";

const wasi = new WASI({
  args: argv,
  env,
  preopens: {
    "/": process.env.PWD,
  },
});

wasi.start(
  await WebAssembly.instantiate(
    await WebAssembly.compile(
      await readFile(new URL("./app", import.meta.url))
    ),
    {
      wasi_snapshot_preview1: wasi.wasiImport,
    }
  )
);
