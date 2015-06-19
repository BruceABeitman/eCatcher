.class public Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackRunBox.java"
.field public static final TYPE:Ljava/lang/String; = "trun"
.field private dataOffset:I
.field private entries:Ljava/util/List;
.field private firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
.method public constructor <init>()V
.registers 2
const-string v0, "trun"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 8
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x1
const/4 v3, 0x1
if-ne v0, v3, :cond_82
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v3
invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
:goto_1a
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x4
const/4 v3, 0x4
if-ne v0, v3, :cond_2a
new-instance v0, Lcom/coremedia/iso/boxes/fragment/a;
invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;-><init>(Ljava/nio/ByteBuffer;)V
iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
:cond_2a
const/4 v0, 0x0
:goto_2b
int-to-long v3, v0
cmp-long v3, v3, v1
if-gez v3, :cond_86
new-instance v3, Lcom/coremedia/iso/boxes/fragment/c;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/fragment/c;-><init>()V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v4
and-int/lit16 v4, v4, 0x100
const/16 v5, 0x100
if-ne v4, v5, :cond_46
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/c;->a(Lcom/coremedia/iso/boxes/fragment/c;J)J
:cond_46
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v4
and-int/lit16 v4, v4, 0x200
const/16 v5, 0x200
if-ne v4, v5, :cond_57
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/c;->b(Lcom/coremedia/iso/boxes/fragment/c;J)J
:cond_57
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v4
and-int/lit16 v4, v4, 0x400
const/16 v5, 0x400
if-ne v4, v5, :cond_69
new-instance v4, Lcom/coremedia/iso/boxes/fragment/a;
invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/a;-><init>(Ljava/nio/ByteBuffer;)V
invoke-static {v3, v4}, Lcom/coremedia/iso/boxes/fragment/c;->a(Lcom/coremedia/iso/boxes/fragment/c;Lcom/coremedia/iso/boxes/fragment/a;)Lcom/coremedia/iso/boxes/fragment/a;
:cond_69
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v4
and-int/lit16 v4, v4, 0x800
const/16 v5, 0x800
if-ne v4, v5, :cond_7a
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I
move-result v4
invoke-static {v3, v4}, Lcom/coremedia/iso/boxes/fragment/c;->a(Lcom/coremedia/iso/boxes/fragment/c;I)I
:cond_7a
iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_82
const/4 v0, -0x1
iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
goto :goto_1a
:cond_86
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v1
and-int/lit8 v0, v1, 0x1
const/4 v2, 0x1
if-ne v0, v2, :cond_1c
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
int-to-long v2, v0
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_1c
and-int/lit8 v0, v1, 0x4
const/4 v2, 0x4
if-ne v0, v2, :cond_26
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;->a(Ljava/nio/ByteBuffer;)V
:cond_26
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2c
:cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/fragment/c;
and-int/lit16 v3, v1, 0x100
const/16 v4, 0x100
if-ne v3, v4, :cond_45
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/c;->a(Lcom/coremedia/iso/boxes/fragment/c;)J
move-result-wide v3
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_45
and-int/lit16 v3, v1, 0x200
const/16 v4, 0x200
if-ne v3, v4, :cond_52
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/c;->b(Lcom/coremedia/iso/boxes/fragment/c;)J
move-result-wide v3
invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:cond_52
and-int/lit16 v3, v1, 0x400
const/16 v4, 0x400
if-ne v3, v4, :cond_5f
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/c;->c(Lcom/coremedia/iso/boxes/fragment/c;)Lcom/coremedia/iso/boxes/fragment/a;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/a;->a(Ljava/nio/ByteBuffer;)V
:cond_5f
and-int/lit16 v3, v1, 0x800
const/16 v4, 0x800
if-ne v3, v4, :cond_2c
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/c;->d(Lcom/coremedia/iso/boxes/fragment/c;)I
move-result v0
invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
goto :goto_2c
:cond_6d
return-void
.end method
.method protected getContentSize()J
.registers 10
const-wide/16 v2, 0x4
const-wide/16 v0, 0x8
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v6
and-int/lit8 v4, v6, 0x1
const/4 v5, 0x1
if-ne v4, v5, :cond_f
const-wide/16 v0, 0xc
:cond_f
and-int/lit8 v4, v6, 0x4
const/4 v5, 0x4
if-ne v4, v5, :cond_3e
add-long/2addr v0, v2
move-wide v4, v0
:goto_16
const-wide/16 v0, 0x0
and-int/lit16 v7, v6, 0x100
const/16 v8, 0x100
if-ne v7, v8, :cond_1f
move-wide v0, v2
:cond_1f
and-int/lit16 v7, v6, 0x200
const/16 v8, 0x200
if-ne v7, v8, :cond_26
add-long/2addr v0, v2
:cond_26
and-int/lit16 v7, v6, 0x400
const/16 v8, 0x400
if-ne v7, v8, :cond_2d
add-long/2addr v0, v2
:cond_2d
and-int/lit16 v6, v6, 0x800
const/16 v7, 0x800
if-ne v6, v7, :cond_34
add-long/2addr v0, v2
:cond_34
iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
int-to-long v2, v2
mul-long/2addr v0, v2
add-long/2addr v0, v4
return-wide v0
:cond_3e
move-wide v4, v0
goto :goto_16
.end method
.method public getDataOffset()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
return v0
.end method
.method public getEntries()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
return-object v0
.end method
.method public getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
return-object v0
.end method
.method public getSampleCompositionTimeOffsets()[J
.registers 6
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
new-array v2, v0, [J
const/4 v0, 0x0
move v1, v0
:goto_10
array-length v0, v2
if-ge v1, v0, :cond_26
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/fragment/c;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/c;->d()I
move-result v0
int-to-long v3, v0
aput-wide v3, v2, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_26
move-object v0, v2
:goto_27
return-object v0
:cond_28
const/4 v0, 0x0
goto :goto_27
.end method
.method public getSampleCount()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public getTrackExtendsBox()Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
move-result-object v2
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;
move-result-object v0
const-class v3, Lcom/coremedia/iso/boxes/MovieBox;
invoke-virtual {v0, v3}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_1c
:cond_1b
return-object v1
:cond_1c
const/4 v3, 0x0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/MovieBox;
const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
const/4 v4, 0x1
invoke-virtual {v0, v3, v4}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J
move-result-wide v4
invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J
move-result-wide v6
cmp-long v4, v4, v6
if-nez v4, :cond_48
:goto_46
move-object v1, v0
goto :goto_2e
:cond_48
move-object v0, v1
goto :goto_46
.end method
.method public isDataOffsetPresent()Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v1
and-int/lit8 v1, v1, 0x1
if-ne v1, v0, :cond_a
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isFirstSampleFlagsPresent()Z
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit8 v0, v0, 0x4
const/4 v1, 0x4
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isSampleCompositionTimeOffsetPresent()Z
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit16 v0, v0, 0x800
const/16 v1, 0x800
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isSampleDurationPresent()Z
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit16 v0, v0, 0x100
const/16 v1, 0x100
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isSampleFlagsPresent()Z
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit16 v0, v0, 0x400
const/16 v1, 0x400
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isSampleSizePresent()Z
.registers 3
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
and-int/lit16 v0, v0, 0x200
const/16 v1, 0x200
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public setDataOffset(I)V
.registers 4
const/4 v0, -0x1
if-ne p1, v0, :cond_11
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffffe
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_e
iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
return-void
:cond_11
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_e
.end method
.method public setDataOffsetPresent(Z)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffffe
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_b
.end method
.method public setEntries(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
return-void
.end method
.method public setFirstSampleFlags(Lcom/coremedia/iso/boxes/fragment/a;)V
.registers 4
if-nez p1, :cond_10
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffffb
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_d
iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
return-void
:cond_10
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit8 v0, v0, 0x4
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_d
.end method
.method public setSampleCompositionTimeOffsetPresent(Z)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit16 v0, v0, 0x800
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfff7ff
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_b
.end method
.method public setSampleDurationPresent(Z)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit16 v0, v0, 0x100
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffeff
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_b
.end method
.method public setSampleFlagsPresent(Z)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit16 v0, v0, 0x400
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffbff
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_b
.end method
.method public setSampleSizePresent(Z)V
.registers 4
if-eqz p1, :cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
or-int/lit16 v0, v0, 0x200
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
:goto_b
return-void
:cond_c
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFlags()I
move-result v0
const v1, 0xfffdff
and-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setFlags(I)V
goto :goto_b
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "TrackRunBox"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "{sampleCount="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->entries:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", dataOffset="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->dataOffset:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", dataOffsetPresent="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isDataOffsetPresent()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v1, ", sampleSizePresent="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v1, ", sampleDurationPresent="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v1, ", sampleFlagsPresentPresent="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v1, ", sampleCompositionTimeOffsetPresent="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v1, ", firstSampleFlags="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->firstSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method