.class public Lcom/fasterxml/jackson/databind/util/ByteBufferBackedOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferBackedOutputStream.java"
.field protected final _buffer:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedOutputStream;->_buffer:Ljava/nio/ByteBuffer;
return-void
.end method
.method public write(I)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedOutputStream;->_buffer:Ljava/nio/ByteBuffer;
int-to-byte v1, p1
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public write([BII)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedOutputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
return-void
.end method