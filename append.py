file_to_write = "main.tf"
file_to_read = "state.txt"

with open(file_to_read, "r") as fread:
    data = fread.read()

with open(file_to_write, "a") as file:
    file.write(data)
