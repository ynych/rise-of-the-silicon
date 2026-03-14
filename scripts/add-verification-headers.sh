#!/bin/bash
# 批量为2025年后事件添加[待验证]标注

FILES=(
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/alibaba-qwen-story.md"
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/baichuan-ai-story.md"
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/deepseek-organization.md"
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/minimax-story.md"
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/moonshot-kimi-story.md"
  "/root/apps/rise-of-the-silicon/02-singularity/organizations/org-structure-comparison.md"
)

for file in "${FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $(basename $file)"
    # 添加文件头说明
    if ! grep -q "可信度标注说明" "$file"; then
      # 在第一个标题前插入说明
      sed -i '1s/^/\u003e **可信度标注说明**：\n\u003e - 无标记 = 已确认事件（多方信源验证）\n\u003e - **[待验证]** = 2025年后事件，尚未完全确认或存在不确定性\n\u003e - *[单一信源]* = 仅有一个来源，需谨慎采信\n\n/' "$file"
    fi
  fi
done

echo "Headers added!"
