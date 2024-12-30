import argparse

# 定义函数用于计算每行的最后一个数之和
def sum_last_numbers(file_path):
    total_sum = 0
    with open(file_path, 'r') as file:
        for line in file:
            cleaned_line = line.strip()  # 清理每行末尾的换行符和空格
            numbers = cleaned_line.split()  # 将清理过的行拆分为数字列表
            if numbers[-1]:  # 如果最后一个元素非空，则将其作为数字加入总和
                total_sum += float(numbers[-1])  # 转换为浮点数并累加到总和
    return total_sum

# 创建命令行参数解析器
parser = argparse.ArgumentParser(description='Calculate sum of last numbers in each line')
parser.add_argument('-f', '--file', type=str, help='File path containing data')

# 解析命令行参数
args = parser.parse_args()

if args.file:
    result = sum_last_numbers(args.file)
    print("总和:", result)
else:
    print("请提供文件路径。使用 -f 或 --file 参数指定文件路径。")
