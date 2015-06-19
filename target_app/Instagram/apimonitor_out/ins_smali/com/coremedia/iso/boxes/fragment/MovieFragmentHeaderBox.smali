.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieFragmentHeaderBox.java"
.field public static final TYPE:Ljava/lang/String; = "mfhd"
.field private sequenceNumber:J
.method public constructor <init>()V
.registers 2
const-string v0, "mfhd"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x8
return-wide v0
.end method
.method public getSequenceNumber()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J
return-wide v0
.end method
.method public setSequenceNumber(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MovieFragmentHeaderBox{sequenceNumber="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->sequenceNumber:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method