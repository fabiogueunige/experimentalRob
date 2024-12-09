import rclpy
from rclpy.node import Node
from robot_urdf.marker_sub import MarkerClass_Subscriber
import numpy as np
from std_msgs.msg import Float64MultiArray

class CmdJointPublisher(Node):
    def __init__(self):
        super().__init__('joint_vel_publisher')
        self.publisher_ = self.create_publisher(Float64MultiArray, '/joint_01_controller/commands', 1)

    def send_cmd(self, position):
        msg = Float64MultiArray()
        msg.layout.dim = []
        msg.layout.data_offset = 0
        msg.data = [position]
        self.publisher_.publish(msg)