.class public final Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AvcConfigurationBox.java"
.field public static final TYPE:Ljava/lang/String; = "avcC"
.field public avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
.method public constructor <init>()V
.registers 2
const-string v0, "avcC"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/coremedia/iso/boxes/h264/a;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/h264/a;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-void
.end method
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 3
new-instance v0, Lcom/coremedia/iso/boxes/h264/a;
invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/h264/a;-><init>(Ljava/nio/ByteBuffer;)V
iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-void
.end method
.method public final getAvcLevelIndication()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->d:I
return v0
.end method
.method public final getAvcProfileIndication()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->b:I
return v0
.end method
.method public final getBitDepthChromaMinus8()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->k:I
return v0
.end method
.method public final getBitDepthLumaMinus8()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->j:I
return v0
.end method
.method public final getChromaFormat()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->i:I
return v0
.end method
.method public final getConfigurationVersion()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->a:I
return v0
.end method
.method public final getContent(Ljava/nio/ByteBuffer;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/h264/a;->a(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method public final getContentSize()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->a()J
move-result-wide v0
return-wide v0
.end method
.method public final getLengthSizeMinusOne()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->e:I
return v0
.end method
.method public final getPPS()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->b()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getPictureParameterSets()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getPictureParameterSetsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->f()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getProfileCompatibility()I
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget v0, v0, Lcom/coremedia/iso/boxes/h264/a;->c:I
return v0
.end method
.method public final getSPS()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->c()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getSequenceParameterSetExts()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;
return-object v0
.end method
.method public final getSequenceParameterSetExtsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->e()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getSequenceParameterSets()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget-object v0, v0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getSequenceParameterSetsAsStrings()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/a;->d()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getavcDecoderConfigurationRecord()Lcom/coremedia/iso/boxes/h264/a;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
return-object v0
.end method
.method public final hasExts()Z
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iget-boolean v0, v0, Lcom/coremedia/iso/boxes/h264/a;->h:Z
return v0
.end method
.method public final setAvcLevelIndication(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->d:I
return-void
.end method
.method public final setAvcProfileIndication(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->b:I
return-void
.end method
.method public final setBitDepthChromaMinus8(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->k:I
return-void
.end method
.method public final setBitDepthLumaMinus8(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->j:I
return-void
.end method
.method public final setChromaFormat(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->i:I
return-void
.end method
.method public final setConfigurationVersion(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->a:I
return-void
.end method
.method public final setHasExts(Z)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput-boolean p1, v0, Lcom/coremedia/iso/boxes/h264/a;->h:Z
return-void
.end method
.method public final setLengthSizeMinusOne(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->e:I
return-void
.end method
.method public final setPictureParameterSets(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/a;->g:Ljava/util/List;
return-void
.end method
.method public final setProfileCompatibility(I)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput p1, v0, Lcom/coremedia/iso/boxes/h264/a;->c:I
return-void
.end method
.method public final setSequenceParameterSetExts(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/a;->l:Ljava/util/List;
return-void
.end method
.method public final setSequenceParameterSets(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->avcDecoderConfigurationRecord:Lcom/coremedia/iso/boxes/h264/a;
iput-object p1, v0, Lcom/coremedia/iso/boxes/h264/a;->f:Ljava/util/List;
return-void
.end method