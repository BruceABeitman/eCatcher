.class public final Lcom/googlecode/mp4parser/boxes/piff/d;
.super Lcom/googlecode/mp4parser/boxes/piff/b;
.source "PlayReadyHeader.java"
.field  b:Ljava/nio/ByteBuffer;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x3
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/piff/b;-><init>(I)V
return-void
.end method
.method public final a()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/d;->b:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/d;->b:Ljava/nio/ByteBuffer;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "EmeddedLicenseStore"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{length="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/d;->a()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method