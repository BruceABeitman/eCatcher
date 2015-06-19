.class public Lcom/coremedia/iso/boxes/UnknownBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "UnknownBox.java"
.field  data:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
iput-object p1, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v0
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v0, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public getData()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public setData(Ljava/nio/ByteBuffer;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/UnknownBox;->data:Ljava/nio/ByteBuffer;
return-void
.end method