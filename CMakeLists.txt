cmake_minimum_required(VERSION 2.8.3)
project(chatbot_msgs)

find_package(catkin REQUIRED COMPONENTS
  actionlib_msgs
  std_msgs
  message_generation
)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY 
    action
  FILES
    Chatbot.action
    Conversation.action
    RasaServer.action
)

add_message_files(
  DIRECTORY
    msg
  FILES
    Event.msg
    Context.msg
    Parameter.msg
    Intent.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  actionlib_msgs
  std_msgs
)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs)
