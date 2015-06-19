.class public Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "CompositionShiftLeastGreatestAtom.java"


# instance fields
.field compositionOffsetToDisplayOffsetShift:I

.field displayEndTime:I

.field displayStartTime:I

.field greatestDisplayOffset:I

.field leastDisplayOffset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "cslg"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return-void
.end method

.method public getCompositionOffsetToDisplayOffsetShift()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDisplayEndTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return v0
.end method

.method public getDisplayStartTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    return v0
.end method

.method public getGreatestDisplayOffset()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    return v0
.end method

.method public getLeastDisplayOffset()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    return v0
.end method

.method public setCompositionOffsetToDisplayOffsetShift(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    return-void
.end method

.method public setDisplayEndTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return-void
.end method

.method public setDisplayStartTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    return-void
.end method

.method public setGreatestDisplayOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    return-void
.end method

.method public setLeastDisplayOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    return-void
.end method
