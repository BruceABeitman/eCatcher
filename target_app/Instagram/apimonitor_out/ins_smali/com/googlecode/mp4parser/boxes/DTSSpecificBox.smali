.class public Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "DTSSpecificBox.java"
.field  DTSSamplingFrequency:J
.field  LBRDurationMod:I
.field  avgBitRate:J
.field  channelLayout:I
.field  coreLFEPresent:I
.field  coreLayout:I
.field  coreSize:I
.field  frameDuration:I
.field  maxBitRate:J
.field  multiAssetFlag:I
.field  pcmSampleDepth:I
.field  representationType:I
.field  reserved:I
.field  reservedBoxPresent:I
.field  stereoDownmix:I
.field  streamConstruction:I
.method public constructor <init>()V
.registers 2
const-string v0, "ddts"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 6
const/4 v3, 0x5
const/4 v2, 0x1
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J
invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/c;
invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I
invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I
const/16 v1, 0xe
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I
const/16 v1, 0x10
invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I
invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v1
iput v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I
invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I
return-void
.end method
.method public getAvgBitRate()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J
return-wide v0
.end method
.method public getChannelLayout()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I
return v0
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
const/4 v4, 0x5
const/4 v3, 0x1
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;
invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I
invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I
const/4 v2, 0x6
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I
const/16 v2, 0xe
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I
const/16 v2, 0x10
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I
invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
iget v1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I
invoke-virtual {v0, v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x14
return-wide v0
.end method
.method public getCoreLFEPresent()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I
return v0
.end method
.method public getCoreLayout()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I
return v0
.end method
.method public getCoreSize()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I
return v0
.end method
.method public getDTSSamplingFrequency()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J
return-wide v0
.end method
.method public getFrameDuration()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I
return v0
.end method
.method public getLBRDurationMod()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I
return v0
.end method
.method public getMaxBitRate()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J
return-wide v0
.end method
.method public getMultiAssetFlag()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I
return v0
.end method
.method public getPcmSampleDepth()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I
return v0
.end method
.method public getRepresentationType()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I
return v0
.end method
.method public getReserved()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I
return v0
.end method
.method public getReservedBoxPresent()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I
return v0
.end method
.method public getStereoDownmix()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I
return v0
.end method
.method public getStreamConstruction()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I
return v0
.end method
.method public setAvgBitRate(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->avgBitRate:J
return-void
.end method
.method public setChannelLayout(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->channelLayout:I
return-void
.end method
.method public setCoreLFEPresent(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLFEPresent:I
return-void
.end method
.method public setCoreLayout(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreLayout:I
return-void
.end method
.method public setCoreSize(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->coreSize:I
return-void
.end method
.method public setDTSSamplingFrequency(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->DTSSamplingFrequency:J
return-void
.end method
.method public setFrameDuration(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->frameDuration:I
return-void
.end method
.method public setLBRDurationMod(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->LBRDurationMod:I
return-void
.end method
.method public setMaxBitRate(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->maxBitRate:J
return-void
.end method
.method public setMultiAssetFlag(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->multiAssetFlag:I
return-void
.end method
.method public setPcmSampleDepth(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->pcmSampleDepth:I
return-void
.end method
.method public setRepresentationType(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->representationType:I
return-void
.end method
.method public setReserved(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reserved:I
return-void
.end method
.method public setReservedBoxPresent(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->reservedBoxPresent:I
return-void
.end method
.method public setStereoDownmix(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->stereoDownmix:I
return-void
.end method
.method public setStreamConstruction(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->streamConstruction:I
return-void
.end method