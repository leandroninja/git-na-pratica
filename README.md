# Git na Prática

Guia prático de Git e GitHub — comandos essenciais, fluxo de trabalho e boas práticas para versionamento de código.

## Configuração inicial

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
git config --global core.editor "code --wait"  # VS Code como editor padrão
```

## Comandos essenciais

### Repositório

```bash
git init                        # Iniciar repositório local
git clone <url>                 # Clonar repositório remoto
git remote add origin <url>     # Conectar ao repositório remoto
git remote -v                   # Listar remotos
```

### Ciclo de trabalho

```bash
git status                      # Ver estado dos arquivos
git add <arquivo>               # Adicionar arquivo ao stage
git add .                       # Adicionar todos os arquivos
git commit -m "mensagem"        # Registrar alterações
git push origin <branch>        # Enviar para o remoto
git pull                        # Atualizar repositório local
```

### Histórico

```bash
git log                         # Histórico completo
git log --oneline               # Histórico resumido
git log --oneline --graph       # Histórico com grafo de branches
git diff                        # Diferenças não staged
git diff --staged               # Diferenças staged
git show <hash>                 # Detalhes de um commit
```

### Branches

```bash
git branch                      # Listar branches
git branch <nome>               # Criar branch
git checkout <nome>             # Mudar de branch
git checkout -b <nome>          # Criar e mudar de branch
git merge <branch>              # Mesclar branch
git branch -d <nome>            # Deletar branch local
git push origin --delete <nome> # Deletar branch remoto
```

### Desfazer alterações

```bash
git restore <arquivo>           # Descartar alterações não staged
git restore --staged <arquivo>  # Remover do stage
git revert <hash>               # Desfazer commit (seguro)
git reset --hard <hash>         # Voltar ao commit (destrutivo)
```

### Tags e versões

```bash
git tag                         # Listar tags
git tag -a v1.0 -m "Versão 1"  # Criar tag anotada
git push origin --tags          # Enviar tags
```

## Fluxo de trabalho recomendado

```
main          ──────●──────────────────────●── (produção)
                    │                      │
feature/x          ●──●──●──●──● (PR)────╯
```

1. Criar branch: `git checkout -b feat/nome-da-feature`
2. Fazer commits na branch
3. Abrir Pull Request no GitHub
4. Revisar e fazer merge
5. Deletar a branch após merge

## Arquivo .gitignore — exemplos

```gitignore
# Dependências
node_modules/
__pycache__/
.venv/

# Builds
dist/
build/
*.pyc

# Variáveis de ambiente
.env
.env.local

# IDEs
.vscode/
.idea/
*.swp
```

## Boas práticas de commit

| Tipo | Uso |
|------|-----|
| `feat:` | Nova funcionalidade |
| `fix:` | Correção de bug |
| `docs:` | Alterações em documentação |
| `refactor:` | Refatoração sem nova feature |
| `test:` | Adição ou correção de testes |
| `chore:` | Manutenção, configs, builds |

## Desenvolvido por

**Leandro Oliveira Moraes**
