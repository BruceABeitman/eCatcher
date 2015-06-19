.class  Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;
.super Ljava/io/OutputStream;
.source "ViewServer.java"
.field private final mStream:Ljava/io/OutputStream;
.method constructor <init>(Ljava/io/OutputStream;)V
.registers 2
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput-object p1, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
return-void
.end method
.method public close()V
.registers 1
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public write(I)V
.registers 3
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
return-void
.end method
.method public write([B)V
.registers 3
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.method public write([BII)V
.registers 5
iget-object v0, p0, Lcom/android/debug/hv/ViewServer$UncloseableOutputStream;->mStream:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
return-void
.end method