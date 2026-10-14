# DevSecOps CI/CD Pipeline

Ditujukan untuk mata kuliah Keamanan Pengembangan Perangkat Lunak/RKS532

Kelompok PBL RKS-501

## Kontribusi & Branching

Jangan commit langsung ke branch `main`. Buat branch baru untuk setiap perubahan, lalu buka Pull Request.

### Format nama branch

```text
<type>/<deskripsi-singkat>
```

Contoh:

| Jenis perubahan | Contoh nama branch |
|---|---|
| Menambah atau mengubah CI | `ci/add-unit-jobs` |
| Fitur baru | `feat/tambah-halaman-login` |
| Perbaikan bug | `fix/perbaiki-validasi-form` |
| Refactor kode | `refactor/rapihkan-service` |

### Alur kerja

1. Pastikan branch `main` sudah terbaru.
2. Buat branch baru dari `main`.
3. Lakukan perubahan dan commit.
4. Push branch ke remote.
5. Buat Pull Request ke `main`.
6. Lakukan review, lalu merge setelah semua test pass.

Contoh:

```bash
git checkout main
git pull origin main
git checkout -b ci/add-unit-jobs
# lakukan perubahan
git add .
git commit -m "ci: add unit jobs workflow"
git push -u origin ci/add-unit-jobs
```

## Aturan Commit Message

Gunakan format **Conventional Commits**:

```text
<type>(<scope>): <deskripsi singkat>
```

- Gunakan huruf kecil untuk type dan deskripsi.
- Deskripsi harus singkat, jelas, dan menggunakan kalimat perintah, misalnya `add` bukan `added`.
- Jangan menggunakan pesan commit seperti `update`, `fix bug`, atau `perubahan`.
- Satu commit sebaiknya hanya berisi satu perubahan atau tujuan.

### Daftar type commit

| Type | Kegunaan | Contoh |
|---|---|---|
| `feat` | Menambahkan fitur baru | `feat(auth): add user login endpoint` |
| `fix` | Memperbaiki bug | `fix(app): handle empty request body` |
| `ci` | Mengubah CI/CD workflow atau pipeline | `ci(pipeline): add dependency scanning job` |
| `docs` | Mengubah dokumentasi | `docs(readme): add branching and commit rules` |
| `refactor` | Memperbaiki struktur kode tanpa mengubah perilaku | `refactor(service): extract validation logic` |
| `test` | Menambah atau memperbaiki test | `test(app): add unit test for health endpoint` |
| `build` | Perubahan build system atau dependency build | `build(docker): optimize Dockerfile layers` |


### Contoh untuk proyek ini

| Perubahan | Commit message |
|---|---|
| Menambah job CI baru | `ci(pipeline): add new CI job` |
| Menambah dependency scanning | `ci(security): add dependency scanning job` |
| Memperbaiki Semgrep configuration | `ci(security): fix semgrep exclude configuration` |
| Menambah endpoint Flask | `feat(app): add health check endpoint` |
| Memperbaiki error pada `app.py` | `fix(app): handle invalid JSON request` |
| Menambah aturan README | `docs(readme): add branching and commit rules` |

### Contoh penggunaan

```bash
git add .github/workflows/ci.yaml
git commit -m "ci(pipeline): add new CI job"

git add app.py
git commit -m "feat(app): add health check endpoint"

git add README.md
git commit -m "docs(readme): add branching and commit rules"
```