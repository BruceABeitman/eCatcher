.class public Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SegmentIndexBox.java"
.field public static final TYPE:Ljava/lang/String; = "sidx"
.field  earliestPresentationTime:J
.field  entries:Ljava/util/List;
.field  firstOffset:J
.field  referenceId:J
.field  reserved:I
.field  timeScale:J
.method public constructor <init>()V
.registers 2
const-string v0, "sidx"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
return-void
.end method
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 9
const/4 v6, 0x1
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I
move-result v0
if-nez v0, :cond_78
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
:goto_22
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v1
const/4 v0, 0x0
:goto_2d
if-ge v0, v1, :cond_85
new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/a/c;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V
new-instance v3, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;
invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;-><init>()V
invoke-virtual {v2, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v4
int-to-byte v4, v4
invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a(B)V
const/16 v4, 0x1f
invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a(I)V
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a(J)V
new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/a/c;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;-><init>(Ljava/nio/ByteBuffer;)V
invoke-virtual {v2, v6}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v4
int-to-byte v4, v4
invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b(B)V
const/4 v4, 0x3
invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v4
int-to-byte v4, v4
invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c(B)V
const/16 v4, 0x1c
invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/c;->a(I)I
move-result v2
invoke-virtual {v3, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b(I)V
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2d
:cond_78
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
goto :goto_22
:cond_85
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 8
const/4 v5, 0x1
invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I
move-result v0
if-nez v0, :cond_78
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
:goto_1e
iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_32
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_83
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;
new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/a/d;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->a()B
move-result v3
invoke-virtual {v2, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->b()I
move-result v3
const/16 v4, 0x1f
invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->c()J
move-result-wide v2
invoke-static {p1, v2, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/a/d;
invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;-><init>(Ljava/nio/ByteBuffer;)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->d()B
move-result v3
invoke-virtual {v2, v3, v5}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->e()B
move-result v3
const/4 v4, 0x3
invoke-virtual {v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/a;->f()I
move-result v0
const/16 v3, 0x1c
invoke-virtual {v2, v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V
goto :goto_32
:cond_78
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V
goto :goto_1e
:cond_83
return-void
.end method
.method protected getContentSize()J
.registers 7
const-wide/16 v4, 0x2
const-wide/16 v2, 0xc
invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->getVersion()I
move-result v0
if-nez v0, :cond_1a
const-wide/16 v0, 0x8
:goto_c
add-long/2addr v0, v2
add-long/2addr v0, v4
add-long/2addr v0, v4
iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
mul-int/lit8 v2, v2, 0xc
int-to-long v2, v2
add-long/2addr v0, v2
return-wide v0
:cond_1a
const-wide/16 v0, 0x10
goto :goto_c
.end method
.method public getEarliestPresentationTime()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
return-wide v0
.end method
.method public getEntries()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
return-object v0
.end method
.method public getFirstOffset()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
return-wide v0
.end method
.method public getReferenceId()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J
return-wide v0
.end method
.method public getReserved()I
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I
return v0
.end method
.method public getTimeScale()J
.registers 3
iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J
return-wide v0
.end method
.method public setEarliestPresentationTime(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->earliestPresentationTime:J
return-void
.end method
.method public setEntries(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->entries:Ljava/util/List;
return-void
.end method
.method public setFirstOffset(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->firstOffset:J
return-void
.end method
.method public setReferenceId(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->referenceId:J
return-void
.end method
.method public setReserved(I)V
.registers 2
iput p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->reserved:I
return-void
.end method
.method public setTimeScale(J)V
.registers 3
iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/threegpp26244/SegmentIndexBox;->timeScale:J
return-void
.end method