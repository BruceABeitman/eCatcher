.class public final Lcom/googlecode/mp4parser/a/c/a;
.super Lcom/googlecode/mp4parser/a/a;
.source "AppendTrack.java"
.field  a:[Lcom/googlecode/mp4parser/a/e;
.field  b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.method public varargs constructor <init>([Lcom/googlecode/mp4parser/a/e;)V
.registers 11
const/4 v8, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/googlecode/mp4parser/a/a;-><init>()V
iput-object p1, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v1, p1
move v0, v2
:goto_9
if-ge v0, v1, :cond_9f
aget-object v3, p1, v0
iget-object v4, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
if-nez v4, :cond_1a
invoke-interface {v3}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v3
iput-object v3, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_1a
new-instance v4, Ljava/io/ByteArrayOutputStream;
invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v5, Ljava/io/ByteArrayOutputStream;
invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-interface {v3}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v6
invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
iget-object v6, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v4
invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z
move-result v4
if-nez v4, :cond_17
invoke-interface {v3}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v1
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v8, :cond_a0
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v8, :cond_a0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
if-eqz v0, :cond_a0
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;
move-result-object v1
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
invoke-static {v0, v1}, Lcom/googlecode/mp4parser/a/c/a;->a(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
move-result-object v0
if-eqz v0, :cond_a0
iget-object v1, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->setBoxes(Ljava/util/List;)V
:cond_9f
return-void
:cond_a0
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "Cannot append "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, " to "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
aget-object v4, p1, v2
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, " since their Sample Description Boxes differ: \n"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v3}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "\n vs. \n"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
aget-object v2, p1, v2
invoke-interface {v2}, Lcom/googlecode/mp4parser/a/e;->f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static a(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
.registers 13
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2db
new-instance v4, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J
move-result-wide v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J
move-result-wide v5
cmp-long v0, v0, v5
if-nez v0, :cond_16c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerFrame(J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J
move-result-wide v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J
move-result-wide v5
cmp-long v0, v0, v5
if-nez v0, :cond_16e
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerPacket(J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J
move-result-wide v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J
move-result-wide v5
cmp-long v0, v0, v5
if-nez v0, :cond_170
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerSample(J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I
move-result v1
if-ne v0, v1, :cond_172
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I
move-result v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I
move-result v1
if-ne v0, v1, :cond_174
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I
move-result v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setPacketSize(I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I
move-result v1
if-ne v0, v1, :cond_176
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I
move-result v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setCompressionId(I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J
move-result-wide v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J
move-result-wide v5
cmp-long v0, v0, v5
if-nez v0, :cond_178
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I
move-result v1
if-ne v0, v1, :cond_17a
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I
move-result v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J
move-result-wide v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J
move-result-wide v5
cmp-long v0, v0, v5
if-nez v0, :cond_17c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J
move-result-wide v0
invoke-virtual {v4, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSamplesPerPacket(J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I
move-result v1
if-ne v0, v1, :cond_17e
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I
move-result v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion(I)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B
move-result-object v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B
move-result-object v1
invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-eqz v0, :cond_180
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B
move-result-object v0
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion2Data([B)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ne v0, v1, :cond_2d8
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_103
:cond_103
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d8
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/coremedia/iso/boxes/a;
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v7, Ljava/io/ByteArrayOutputStream;
invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
move-result-object v8
invoke-interface {v0, v8}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V
invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
move-result-object v8
invoke-interface {v1, v8}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v7
invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z
move-result v2
if-nez v2, :cond_2d3
const-string v2, "esds"
invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_103
const-string v2, "esds"
invoke-interface {v1}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_103
move-object v2, v0
check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/a/h;
move-result-object v2
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/a/h;
move-result-object v1
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->j()I
move-result v8
if-eq v7, v8, :cond_182
move-object v0, v3
:goto_16b
return-object v0
:cond_16c
move-object v0, v3
goto :goto_16b
:cond_16e
move-object v0, v3
goto :goto_16b
:cond_170
move-object v0, v3
goto :goto_16b
:cond_172
move-object v0, v3
goto :goto_16b
:cond_174
move-object v0, v3
goto :goto_16b
:cond_176
move-object v0, v3
goto :goto_16b
:cond_178
move-object v0, v3
goto :goto_16b
:cond_17a
move-object v0, v3
goto :goto_16b
:cond_17c
move-object v0, v3
goto :goto_16b
:cond_17e
move-object v0, v3
goto :goto_16b
:cond_180
move-object v0, v3
goto :goto_16b
:cond_182
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->m()I
move-result v8
if-eq v7, v8, :cond_18e
move-object v0, v3
goto :goto_16b
:cond_18e
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->p()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->p()I
move-result v8
if-eq v7, v8, :cond_19a
move-object v0, v3
goto :goto_16b
:cond_19a
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->h()I
move-result v8
if-eq v7, v8, :cond_1a6
move-object v0, v3
goto :goto_16b
:cond_1a6
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->g()I
move-result v8
if-eq v7, v8, :cond_1b2
move-object v0, v3
goto :goto_16b
:cond_1b2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->k()I
move-result v8
if-eq v7, v8, :cond_1be
move-object v0, v3
goto :goto_16b
:cond_1be
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->o()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->o()I
move-result v8
if-eq v7, v8, :cond_1ca
move-object v0, v3
goto :goto_16b
:cond_1ca
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->i()I
move-result v8
if-eq v7, v8, :cond_1d6
move-object v0, v3
goto :goto_16b
:cond_1d6
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l()I
move-result v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->l()I
move-result v8
if-eq v7, v8, :cond_1e2
move-object v0, v3
goto :goto_16b
:cond_1e2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_1f9
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_1ff
:cond_1f6
move-object v0, v3
goto/16 :goto_16b
:cond_1f9
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->n()Ljava/lang/String;
move-result-object v7
if-nez v7, :cond_1f6
:cond_1ff
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v7
if-eqz v7, :cond_22c
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_232
:cond_213
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v8
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/a;
move-result-object v9
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/a;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/boxes/mp4/a/a;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_249
move-object v0, v3
goto/16 :goto_16b
:cond_22c
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/e;
move-result-object v7
if-nez v7, :cond_213
:cond_232
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f()Ljava/util/List;
move-result-object v7
if-eqz v7, :cond_2b0
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f()Ljava/util/List;
move-result-object v7
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f()Ljava/util/List;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_2b6
:cond_246
move-object v0, v3
goto/16 :goto_16b
:cond_249
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->l()J
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->l()J
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j()I
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->j()I
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/f;
move-result-object v9
if-eqz v9, :cond_26c
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/f;
move-result-object v9
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/f;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/googlecode/mp4parser/boxes/mp4/a/f;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_272
:cond_269
move-object v0, v3
goto/16 :goto_16b
:cond_26c
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->d()Lcom/googlecode/mp4parser/boxes/mp4/a/f;
move-result-object v9
if-nez v9, :cond_269
:cond_272
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->k()J
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->k()J
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->f()Ljava/util/List;
move-result-object v9
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->f()Ljava/util/List;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_289
move-object v0, v3
goto/16 :goto_16b
:cond_289
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->g()I
move-result v9
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->g()I
move-result v10
if-eq v9, v10, :cond_296
move-object v0, v3
goto/16 :goto_16b
:cond_296
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->h()I
move-result v9
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->h()I
move-result v10
if-eq v9, v10, :cond_2a3
move-object v0, v3
goto/16 :goto_16b
:cond_2a3
invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i()I
move-result v7
invoke-virtual {v8}, Lcom/googlecode/mp4parser/boxes/mp4/a/e;->i()I
move-result v8
if-eq v7, v8, :cond_232
move-object v0, v3
goto/16 :goto_16b
:cond_2b0
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->f()Ljava/util/List;
move-result-object v7
if-nez v7, :cond_246
:cond_2b6
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/n;
move-result-object v7
if-eqz v7, :cond_2cd
invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/n;
move-result-object v2
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/n;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/n;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2d3
:cond_2ca
move-object v0, v3
goto/16 :goto_16b
:cond_2cd
invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/a/h;->e()Lcom/googlecode/mp4parser/boxes/mp4/a/n;
move-result-object v1
if-nez v1, :cond_2ca
:cond_2d3
invoke-virtual {v4, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/a;)V
goto/16 :goto_103
:cond_2d8
move-object v0, v4
goto/16 :goto_16b
:cond_2db
move-object v0, v3
goto/16 :goto_16b
.end method
.method public final e()Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v3, v2
const/4 v0, 0x0
:goto_9
if-ge v0, v3, :cond_17
aget-object v4, v2, v0
invoke-interface {v4}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_17
return-object v1
.end method
.method public final f()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->b:Lcom/coremedia/iso/boxes/SampleDescriptionBox;
return-object v0
.end method
.method public final g()Ljava/util/List;
.registers 14
const-wide/16 v11, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v4
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v4
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_83
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v2, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v3, v2
move v0, v4
:goto_24
if-ge v0, v3, :cond_36
aget-object v5, v2, v0
invoke-interface {v5}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v5
invoke-static {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J
move-result-object v5
invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_36
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_3f
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_81
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, [J
array-length v6, v1
move v3, v4
:goto_4e
if-ge v3, v6, :cond_3f
aget-wide v7, v1, v3
invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_66
invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v9
cmp-long v0, v9, v7
if-eqz v0, :cond_72
:cond_66
new-instance v0, Lcom/coremedia/iso/boxes/k;
invoke-direct {v0, v11, v12, v7, v8}, Lcom/coremedia/iso/boxes/k;-><init>(JJ)V
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_6e
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_4e
:cond_72
invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v7
add-long/2addr v7, v11
invoke-virtual {v0, v7, v8}, Lcom/coremedia/iso/boxes/k;->a(J)V
goto :goto_6e
:cond_81
move-object v0, v2
:goto_82
return-object v0
:cond_83
const/4 v0, 0x0
goto :goto_82
.end method
.method public final h()Ljava/util/List;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v4
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_81
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v4
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_81
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v2, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v3, v2
move v0, v4
:goto_22
if-ge v0, v3, :cond_34
aget-object v5, v2, v0
invoke-interface {v5}, Lcom/googlecode/mp4parser/a/e;->h()Ljava/util/List;
move-result-object v5
invoke-static {v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I
move-result-object v5
invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_34
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_3d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7f
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, [I
array-length v6, v1
move v3, v4
:goto_4c
if-ge v3, v6, :cond_3d
aget v7, v1, v3
invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_62
invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/b;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/b;->b()I
move-result v0
if-eq v0, v7, :cond_6f
:cond_62
new-instance v0, Lcom/coremedia/iso/boxes/b;
const/4 v8, 0x1
invoke-direct {v0, v8, v7}, Lcom/coremedia/iso/boxes/b;-><init>(II)V
invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:goto_6b
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_4c
:cond_6f
invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/b;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/b;->a()I
move-result v7
add-int/lit8 v7, v7, 0x1
invoke-virtual {v0, v7}, Lcom/coremedia/iso/boxes/b;->a(I)V
goto :goto_6b
:cond_7f
move-object v0, v2
:goto_80
return-object v0
:cond_81
const/4 v0, 0x0
goto :goto_80
.end method
.method public final i()[J
.registers 16
const/4 v2, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v2
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v0
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v2
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v0
array-length v0, v0
if-lez v0, :cond_59
iget-object v3, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v4, v3
move v0, v2
move v1, v2
:goto_1b
if-ge v0, v4, :cond_28
aget-object v5, v3, v0
invoke-interface {v5}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v5
array-length v5, v5
add-int/2addr v1, v5
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_28
new-array v0, v1, [J
const-wide/16 v3, 0x0
iget-object v8, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v9, v8
move v5, v2
move-wide v6, v3
move v1, v2
:goto_32
if-ge v5, v9, :cond_5a
aget-object v10, v8, v5
invoke-interface {v10}, Lcom/googlecode/mp4parser/a/e;->i()[J
move-result-object v11
array-length v12, v11
move v3, v1
move v1, v2
:goto_3d
if-ge v1, v12, :cond_4a
aget-wide v13, v11, v1
add-int/lit8 v4, v3, 0x1
add-long/2addr v13, v6
aput-wide v13, v0, v3
add-int/lit8 v1, v1, 0x1
move v3, v4
goto :goto_3d
:cond_4a
invoke-interface {v10}, Lcom/googlecode/mp4parser/a/e;->e()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
int-to-long v10, v1
add-long/2addr v6, v10
add-int/lit8 v1, v5, 0x1
move v5, v1
move v1, v3
goto :goto_32
:cond_59
const/4 v0, 0x0
:cond_5a
return-object v0
.end method
.method public final j()Ljava/util/List;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iget-object v2, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
array-length v3, v2
:goto_21
if-ge v1, v3, :cond_30
aget-object v4, v2, v1
invoke-interface {v4}, Lcom/googlecode/mp4parser/a/e;->j()Ljava/util/List;
move-result-object v4
invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_21
:cond_2f
const/4 v0, 0x0
:cond_30
return-object v0
.end method
.method public final k()Lcom/googlecode/mp4parser/a/f;
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
return-object v0
.end method
.method public final l()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final m()Lcom/coremedia/iso/boxes/a;
.registers 3
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c/a;->a:[Lcom/googlecode/mp4parser/a/e;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->m()Lcom/coremedia/iso/boxes/a;
move-result-object v0
return-object v0
.end method