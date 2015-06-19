.class public Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "MpegSampleEntry.java"
.implements Lcom/coremedia/iso/boxes/ContainerBox;
.field private boxParser:Lcom/coremedia/iso/b;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 7
const-wide/16 v0, 0x8
iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->boxes:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J
move-result-wide v4
add-long v0, v1, v4
move-wide v1, v0
goto :goto_9
:cond_1d
return-wide v1
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MpegSampleEntry"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/util/List;
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/MpegSampleEntry;->getBoxes()Ljava/util/List;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method