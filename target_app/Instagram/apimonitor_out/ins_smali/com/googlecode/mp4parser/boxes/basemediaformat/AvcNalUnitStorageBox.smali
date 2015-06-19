.class public Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AvcNalUnitStorageBox.java"
.field  avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
.method public constructor <init>()V
.registers 2
const-string v0, "avcn"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;)V
.registers 3
const-string v0, "avcn"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getavcDecoderConfigurationRecord()Lcom/coremedia/iso/boxes/h264/a;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
new-instance v0, Lcom/coremedia/iso/boxes/h264/a;
invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/h264/a;-><init>(Ljava/nio/ByteBuffer;)V
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-void
.end method
.method public getAvcDecoderConfigurationRecord()Lcom/coremedia/iso/boxes/h264/a;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-object v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/h264/a;->a(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->a()J
move-result-wide v0
return-wide v0
.end method
.method public getLengthSizeMinusOne()I
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->e:I
return v0
.end method
.method public getPPS()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->b()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPictureParameterSetsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->f()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getSPS()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->c()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->e()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->d()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AvcNalUnitStorageBox{SPS="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/h264/a;->d()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",PPS="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/h264/a;->f()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",lengthSize="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/basemediaformat/AvcNalUnitStorageBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v1, v1, Lcom/coremedia/iso/boxes/h264/a;->e:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method