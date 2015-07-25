# xor-validate

Scores xor networks

## Using

Add the following to your networks `package.json`:
```json
...
  "verifiers": [
    {
      "name": "deepkeep/xor-verify"
    }
  ]
...
```

This will automatically run the xor-validator on that package when it's uploaded.

## Building from source and publishing

To build the image
```bash
git clone https://github.com/deepkeep/xor-validate.git
cd xor-validate
docker build -t docker.deepkeep.co/USERNAME/xor-validate .
```

To upload to deepkeep:
```bash
docker push docker.deepkeep.co/USERNAME/xor-validate
```
