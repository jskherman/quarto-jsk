# Import required modules
from dotenv import dotenv_values

# Load environment variables
envvars = dict(dotenv_values(".env"))

# Replace relevant variables
# - Read the file
with open("_quarto.yml", "r") as file:
    config_data = file.read()

# - Replace the variables
for key, value in envvars.items():
    config_data = config_data.replace(f"${{{key}}}", value)

# - Write the file out again
with open("_quarto.yml", "w") as file:
    file.write(config_data)
