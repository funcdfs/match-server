#!/usr/bin/env python
# encoding: utf-8

#import sys
#import glob
#sys.path.append('gen-py')
#sys.path.insert(0, glob.glob('../../lib/py/build/lib*')[0])
# 前四行 用于 将 Python 加到环境变量里面，但是在这里没有用

# 修改这里的 from 路径

from match_client.match import Match
from match_client.match.ttypes import User

from thrift import Thrift
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol


def main():
    # Make socket
    transport = TSocket.TSocket('localhost', 9090)

    # Buffering is critical. Raw sockets are very slow
    transport = TTransport.TBufferedTransport(transport)

    # Wrap in a protocol
    protocol = TBinaryProtocol.TBinaryProtocol(transport)

    # Create a client to use the protocol encoder
    client = Match.Client(protocol)

    # Connect!
    transport.open()

    user = User(1, "fengwei", 1500)
    client.add_user(user, "", )



    # Close!
    transport.close()

if __name__ == "__main__":
    main()
