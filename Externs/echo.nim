import asyncnet, asyncdispatch

var clients {.threadvar.}: seq[AsyncSocket]

proc processClient(client: AsyncSocket) {.async.} =
  while true:
    let line = await client.recvLine()
    if line != "":
      echo "Received: " & line & "!"
      for c in clients:
        await c.send(line & "\c\L")
    else:
      #It seems sock received "", this it means connection has been closed.
      client.close()#You should also close and remove the socket from the list
      for i, c in clients:
        if c == client:
          clients.del(i)
          break
      echo("Client has left the server")
      break

proc serve() {.async.} =
  clients = @[]
  var server = newAsyncSocket()
  server.bindAddr(Port(12345))
  server.listen()
  
  while true:
    let client = await server.accept()
    clients.add client
    
    asyncCheck processClient(client)

asyncCheck serve()
runForever()