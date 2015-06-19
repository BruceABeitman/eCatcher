.class public Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "TextSampleEntry.java"


# static fields
.field public static final TYPE1:Ljava/lang/String; = "tx3g"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = "enct"


# instance fields
.field private backgroundColorRgba:[I

.field private boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

.field private displayFlags:J

.field private horizontalJustification:I

.field private styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

.field private verticalJustification:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/a;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/b;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/b;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/a;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;->a(Ljava/nio/ByteBuffer;)V

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/b;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/sampleentry/b;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/b;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBackgroundColorRgba()[I
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    return-object v0
.end method

.method public getBoxRecord()Lcom/coremedia/iso/boxes/sampleentry/a;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;->b(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/sampleentry/b;->b(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 7

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    const-wide/16 v0, 0x26

    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_d

    :cond_21
    return-wide v1
.end method

.method public getHorizontalJustification()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    return v0
.end method

.method public getStyleRecord()Lcom/coremedia/iso/boxes/sampleentry/b;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    return-object v0
.end method

.method public getVerticalJustification()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    return v0
.end method

.method public isContinuousKaraoke()Z
    .registers 5

    const-wide/16 v2, 0x800

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFillTextRegion()Z
    .registers 5

    const-wide/32 v2, 0x40000

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isScrollDirection()Z
    .registers 5

    const-wide/16 v2, 0x180

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isScrollIn()Z
    .registers 5

    const-wide/16 v2, 0x20

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isScrollOut()Z
    .registers 5

    const-wide/16 v2, 0x40

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWriteTextVertically()Z
    .registers 5

    const-wide/32 v2, 0x20000

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setBackgroundColorRgba([I)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->backgroundColorRgba:[I

    return-void
.end method

.method public setBoxRecord(Lcom/coremedia/iso/boxes/sampleentry/a;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->boxRecord:Lcom/coremedia/iso/boxes/sampleentry/a;

    return-void
.end method

.method public setContinuousKaraoke(Z)V
    .registers 6

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x801

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_9
.end method

.method public setFillTextRegion(Z)V
    .registers 6

    if-eqz p1, :cond_b

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_a
    return-void

    :cond_b
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, -0x40001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_a
.end method

.method public setHorizontalJustification(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->horizontalJustification:I

    return-void
.end method

.method public setScrollDirection(Z)V
    .registers 6

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x180

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x181

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_9
.end method

.method public setScrollIn(Z)V
    .registers 6

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_9
.end method

.method public setScrollOut(Z)V
    .registers 6

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_9
.end method

.method public setStyleRecord(Lcom/coremedia/iso/boxes/sampleentry/b;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->styleRecord:Lcom/coremedia/iso/boxes/sampleentry/b;

    return-void
.end method

.method public setVerticalJustification(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->verticalJustification:I

    return-void
.end method

.method public setWriteTextVertically(Z)V
    .registers 6

    if-eqz p1, :cond_b

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    :goto_a
    return-void

    :cond_b
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->displayFlags:J

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "TextSampleEntry"

    return-object v0
.end method
