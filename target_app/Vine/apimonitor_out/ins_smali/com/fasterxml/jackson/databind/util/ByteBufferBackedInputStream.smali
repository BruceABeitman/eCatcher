.class public Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferBackedInputStream.java"
.field protected final _buffer:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
return v0
.end method
.method public read()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
move-result v0
and-int/lit16 v0, v0, 0xff
:goto_10
return v0
:cond_11
const/4 v0, -0x1
goto :goto_10
.end method
.method public read([BII)I
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;->_buffer:Ljava/nio/ByteBuffer;
invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
goto :goto_9
.end method