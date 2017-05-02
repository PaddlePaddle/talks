cat > README.md <<'EOF'
# Figures

Run the following command to list figures in README.md:

```bash
cd figures
./generate-thumbnails.bash
```
EOF

for i in $(ls *.png | sort); do
    echo "#### $i ![]($i)" >> README.md
done
