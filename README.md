# 李善友《第一性原理》13 节课 + 通用教学框架

> AgentSkills 格式。AI Agent 加载后即可用"苏格拉底追问 + 费曼学习法 + 双层验证"教学。

## 套件清单

| Skill | 用途 |
|-------|------|
| `first-principles-coach/` | 课程专用：李善友《第一性原理》13 节课的具体内容 |
| `teaching-skill/` | 通用框架：苏格拉底 + 费曼 + 评分 + 兜底，可套到任何学科 |

## 加载方式

- **OpenClaw / 类似 AgentSkills 平台**：把整个仓库 `git clone` 到 skills 目录
- **飞书妙搭 / 扣子 / Coze**：上传 `*.skill` 打包文件（需要先用 `package_skill.py` 打包）
- **任意 AI 对话**：把 `SKILL.md` 内容贴到系统提示里

## 快速开始

### 1. 教第一性原理 13 节课

加载 `first-principles-coach` skill，告诉 AI：

> 按 first-principles-coach 教我。说"开始学习"开始。

### 2. 用通用框架教其他课

加载 `teaching-skill` skill，再加自己的课程内容。

## 仓库结构

```
.
├── first-principles-coach/
│   ├── SKILL.md                       # 主入口
│   ├── courses/                       # 13 节课
│   │   ├── 01-deliberate-practice.md
│   │   ├── 02-mental-models.md
│   │   └── ... (13 个)
│   ├── references/                    # 方法论
│   │   ├── socratic-6-dimensions.md
│   │   ├── feynman-4-step.md
│   │   ├── scoring-rubric.md
│   │   └── feedback-style.md
│   └── templates/                     # 回复模板
│       ├── start-lesson.md
│       ├── check-understanding.md
│       ├── stuck-helper.md
│       └── progress-report.md
│
├── teaching-skill/
│   ├── SKILL.md
│   ├── references/
│   │   ├── socratic_questioning.md
│   │   ├── feynman_technique.md
│   │   └── scoring_rubric.md
│   └── templates/
│       ├── progress_tracker.json
│       ├── understanding_eval.md
│       └── stuck_fallback.md
│
├── .gitignore
└── README.md                          # 本文件
```

## 触发词

| 学生说 | AI 行为 |
|--------|---------|
| `开始学习` / `开始第一性原理` | 启动第 1 课 |
| `开始第N课` | 读第 N 课，给 3 个引导问题 |
| `我的理解是...` | 进入评分 + 追问循环 |
| `查看进度` | 渲染进度报告 |
| `复习第N课` | 费曼自检 |
| `测试` | 跨领域情境测 |
| `我不确定` / `我卡住了` | 10 级兜底话术 |

## 评分规则（速查）

| 分 | 抽象层 | 具象层 |
|----|--------|--------|
| 1 | 复述 | 复述 |
| 2 | 解释有术语 | 原课例子 |
| 3 | 12 岁能懂有缝隙 | 原课例子 |
| 4 | 12 岁能懂无缝隙 | 1 个跨领域例子 |
| 5 | 比喻精准 | 2+ 跨领域 + 反例 |

## License

MIT
