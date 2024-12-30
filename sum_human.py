import argparse
import re

# 定义函数用于计算【SG$】中的数字之和
def sum_sg_numbers(file_path):
    total_sum = 0
    with open(file_path, 'r') as file:
        for line in file:
            matches = re.findall(r'【SG\$(\d+\.\d+)】', line)  # 使用正则表达式查找每行中的【SG$】数字
            for match in matches:
                total_sum += float(match)  # 将找到的数字转换为浮点数并累加到总和
    return total_sum

# 创建命令行参数解析器
parser = argparse.ArgumentParser(description='Calculate sum of numbers in 【SG$】')
parser.add_argument('-f', '--file', type=str, help='File path containing data')

# 解析命仗行参数
args = parser.parse_args()

if args.file:
    result = sum_sg_numbers(args.file)
    print("【SG$】中的数字总和:", result)
else:
    print("请提供文件路径。使用 -f 或 --file 参数指定文件路径。")
