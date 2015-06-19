.class public Lcom/coremedia/iso/boxes/FreeSpaceBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "FreeSpaceBox.java"
.field public static final TYPE:Ljava/lang/String; = "skip"
.field  data:[B
.method public constructor <init>()V
.registers 2
const-string v0, "skip"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
new-array v0, v0, [B
iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
array-length v0, v0
int-to-long v0, v0
return-wide v0
.end method
.method public getData()[B
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
return-object v0
.end method
.method public setData([B)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "FreeSpaceBox[size="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/coremedia/iso/boxes/FreeSpaceBox;->data:[B
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";type="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/FreeSpaceBox;->getType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method