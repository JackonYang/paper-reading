# push_back VS emplace_back

## Usage

```bash
# compile and run
make test

# compile only
make compile
# run only
make run
# clean
make clean
```

## Output

emplace_back 少一次 move & Destroy

```bash
--- push_back ---
Create class
Move Constructor Called
Destroy class

--- emplace_back ---
Create class

--- Finish ---
Destroy class
Destroy class
```
