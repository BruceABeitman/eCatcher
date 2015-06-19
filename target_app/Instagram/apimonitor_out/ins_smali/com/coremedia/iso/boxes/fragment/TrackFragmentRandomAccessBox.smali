.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackFragmentRandomAccessBox.java"
.field public static final TYPE:Ljava/lang/String; = "tfra"
.field private entries:Ljava/util/List;
.field private lengthSizeOfSampleNum:I
.field private lengthSizeOfTrafNum:I
.field private lengthSizeOfTrunNum:I
.field private reserved:I
.field private trackId:J
.method public constructor <init>()V
.registers 3
const/4 v1, 0x2
const-string v0, "tfra"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
iput v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 8
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
const/4 v2, 0x6
shr-long v2, v0, v2
long-to-int v2, v2
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I
const-wide/16 v2, 0x3f
and-long/2addr v2, v0
long-to-int v2, v2
shr-int/lit8 v2, v2, 0x4
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
const-wide/16 v2, 0xc
and-long/2addr v2, v0
long-to-int v2, v2
shr-int/lit8 v2, v2, 0x2
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
const-wide/16 v2, 0x3
and-long/2addr v0, v2
long-to-int v0, v0
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
const/4 v0, 0x0
:goto_3b
int-to-long v3, v0
cmp-long v3, v3, v1
if-gez v3, :cond_8c
new-instance v3, Lcom/coremedia/iso/boxes/fragment/b;
invoke-direct {v3}, Lcom/coremedia/iso/boxes/fragment/b;-><init>()V
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I
move-result v4
const/4 v5, 0x1
if-ne v4, v5, :cond_7d
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->a(Lcom/coremedia/iso/boxes/fragment/b;J)J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->b(Lcom/coremedia/iso/boxes/fragment/b;J)J
:goto_5a
iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
invoke-static {p1, v4}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->c(Lcom/coremedia/iso/boxes/fragment/b;J)J
iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
invoke-static {p1, v4}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->d(Lcom/coremedia/iso/boxes/fragment/b;J)J
iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
invoke-static {p1, v4}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->e(Lcom/coremedia/iso/boxes/fragment/b;J)J
iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_3b
:cond_7d
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->a(Lcom/coremedia/iso/boxes/fragment/b;J)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/b;->b(Lcom/coremedia/iso/boxes/fragment/b;J)J
goto :goto_5a
:cond_8c
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 7
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I
shl-int/lit8 v0, v0, 0x6
int-to-long v0, v0
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
add-int/lit8 v2, v2, -0x1
and-int/lit8 v2, v2, 0x3
shl-int/lit8 v2, v2, 0x4
int-to-long v2, v2
or-long/2addr v0, v2
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
add-int/lit8 v2, v2, -0x1
and-int/lit8 v2, v2, 0x3
shl-int/lit8 v2, v2, 0x2
int-to-long v2, v2
or-long/2addr v0, v2
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
add-int/lit8 v2, v2, -0x1
and-int/lit8 v2, v2, 0x3
int-to-long v2, v2
or-long/2addr v0, v2
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_88
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/fragment/b;
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_79
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->a(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->b(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
:goto_5d
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->c(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
invoke-static {v2, v3, p1, v4}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->d(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
iget v4, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
invoke-static {v2, v3, p1, v4}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->e(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
invoke-static {v2, v3, p1, v0}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V
goto :goto_3c
:cond_79
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->a(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-static {v0}, Lcom/coremedia/iso/boxes/fragment/b;->b(Lcom/coremedia/iso/boxes/fragment/b;)J
move-result-wide v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
goto :goto_5d
:cond_88
return-void
.end method
.method protected getContentSize()J
.registers 5
const-wide/16 v2, 0x10
invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->getVersion()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_35
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
mul-int/lit8 v0, v0, 0x10
int-to-long v0, v0
add-long/2addr v0, v2
:goto_13
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
mul-int/2addr v2, v3
int-to-long v2, v2
add-long/2addr v0, v2
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
mul-int/2addr v2, v3
int-to-long v2, v2
add-long/2addr v0, v2
iget v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
mul-int/2addr v2, v3
int-to-long v2, v2
add-long/2addr v0, v2
return-wide v0
:cond_35
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
mul-int/lit8 v0, v0, 0x8
int-to-long v0, v0
add-long/2addr v0, v2
goto :goto_13
.end method
.method public getEntries()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getLengthSizeOfSampleNum()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
return v0
.end method
.method public getLengthSizeOfTrafNum()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
return v0
.end method
.method public getLengthSizeOfTrunNum()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
return v0
.end method
.method public getNumberOfEntries()J
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public getReserved()I
.registers 2
iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->reserved:I
return v0
.end method
.method public getTrackId()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J
return-wide v0
.end method
.method public setEntries(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
return-void
.end method
.method public setLengthSizeOfSampleNum(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfSampleNum:I
return-void
.end method
.method public setLengthSizeOfTrafNum(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrafNum:I
return-void
.end method
.method public setLengthSizeOfTrunNum(I)V
.registers 2
iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->lengthSizeOfTrunNum:I
return-void
.end method
.method public setTrackId(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "TrackFragmentRandomAccessBox{trackId="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->trackId:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", entries="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->entries:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method