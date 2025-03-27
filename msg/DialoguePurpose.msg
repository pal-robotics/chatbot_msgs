# The keyword indicating the purpose of the dialogue.
# The purpose is used to determine the type of dialogue to be conducted.
# If left empty, the chatbot should use a default purpose.
# For example, if the purpose is 'ask', the dialogue could be a questionnaire.
# Depending on the chatbot implementation, the purpose could be used to select the appropriate model and story/prompt.
string keyword

# The JSON dictionary of variables used to specify a generic purpose.
# For example, if the purpose is 'ask', and the required information is the person name and age,
# specifying the expected data type of their values, the dictionary could be the following:
#   {"person_name": "str", "person_age": "int"}
string variables "{}"

# Full description of the purpose of the dialogue in natural language.
# This field is optional and can be used to provide a more detailed description of the purpose.
# Depending on the chatbot implementation, the description might be used to refine the dialogue purpose.
# For instance, an LLM-based chatbot might append the description to the chatbot prompt.
string description
