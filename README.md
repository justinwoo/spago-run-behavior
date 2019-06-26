```purs
foreign import argv :: Array String -- from Node process.argv

main :: Effect Unit
main = do
  log $ "argv length:" <> show (Array.length argv)
  log $ "argv: " <> show argv
```

```bash
$ spago run --node-args "hello world"
Installation complete.
Build succeeded.
argv length:3
argv: ["/nix/store/shit-nodejs-10.16.0/bin/node","hello","world"]
```

```bash
$ ./index.js hello world
argv length:4
argv: ["/nix/store/shit-nodejs-10.16.0/bin/node","/path/to/spago-run-behavior/index.js","hello","world"]
```
