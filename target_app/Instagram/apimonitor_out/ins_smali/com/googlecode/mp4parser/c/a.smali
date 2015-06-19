.class public final Lcom/googlecode/mp4parser/c/a;
.super Ljava/lang/Object;
.source "ByteBufferByteChannel.java"
.implements Ljava/nio/channels/ByteChannel;
.field  a:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/googlecode/mp4parser/c/a;->a:Ljava/nio/ByteBuffer;
return-void
.end method
.method public final close()V
.registers 1
return-void
.end method
.method public final isOpen()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final read(Ljava/nio/ByteBuffer;)I
.registers 6
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
iget-object v2, p0, Lcom/googlecode/mp4parser/c/a;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I
move-result v2
if-lt v2, v1, :cond_1a
iget-object v2, p0, Lcom/googlecode/mp4parser/c/a;->a:Ljava/nio/ByteBuffer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v3
invoke-virtual {v2, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
return v1
:cond_1a
new-instance v0, Ljava/io/EOFException;
const-string v1, "Reading beyond end of stream"
invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final write(Ljava/nio/ByteBuffer;)I
.registers 4
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
iget-object v1, p0, Lcom/googlecode/mp4parser/c/a;->a:Ljava/nio/ByteBuffer;
invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
return v0
.end method