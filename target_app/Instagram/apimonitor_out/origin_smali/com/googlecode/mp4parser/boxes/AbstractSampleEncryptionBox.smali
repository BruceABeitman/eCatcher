.class public abstract Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AbstractSampleEncryptionBox.java"


# instance fields
.field algorithmId:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/a;",
            ">;"
        }
    .end annotation
.end field

.field ivSize:I

.field kid:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-void

    nop

    :array_1a
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_6f

    invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_25
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_29
    const-wide/16 v3, 0x1

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_c9

    new-instance v5, Lcom/googlecode/mp4parser/boxes/a;

    invoke-direct {v5, p0}, Lcom/googlecode/mp4parser/boxes/a;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V

    if-gez v2, :cond_be

    const/16 v0, 0x8

    :goto_3c
    new-array v0, v0, [B

    iput-object v0, v5, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    iget-object v0, v5, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_c1

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v5, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    :goto_58
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_c1

    iget-object v0, v5, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/mp4parser/boxes/a;->a(IJ)Lcom/googlecode/mp4parser/boxes/b;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_58

    :cond_6f
    const-string v1, "/moov[0]/trak/tkhd"

    invoke-static {p0, v1}, Lcom/googlecode/mp4parser/c/c;->b(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    move-object v1, v0

    check-cast v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v1

    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-interface {v1, v6}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_cc

    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/c;->a(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Lcom/coremedia/iso/boxes/a;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    if-nez v1, :cond_ca

    const-string v1, "../mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/uuid[0]"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/c;->a(Lcom/coremedia/iso/boxes/a;Ljava/lang/String;)Lcom/coremedia/iso/boxes/a;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;

    :goto_b8
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/AbstractTrackEncryptionBox;->getDefaultIvSize()I

    move-result v0

    :goto_bc
    move v2, v0

    goto :goto_7a

    :cond_be
    move v0, v2

    goto/16 :goto_3c

    :cond_c1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v3

    goto/16 :goto_29

    :cond_c9
    return-void

    :cond_ca
    move-object v0, v1

    goto :goto_b8

    :cond_cc
    move v0, v2

    goto :goto_bc
.end method

.method public createEntry()Lcom/googlecode/mp4parser/boxes/a;
    .registers 2

    new-instance v0, Lcom/googlecode/mp4parser/boxes/a;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/boxes/a;-><init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-nez v2, :cond_33

    :cond_39
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getAlgorithmId()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    return v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractFullBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_18
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/a;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    new-array v2, v2, [B

    iget-object v3, v0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    iget-object v6, v0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_50
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/b;

    iget v3, v0, Lcom/googlecode/mp4parser/boxes/b;->a:I

    invoke-static {p1, v3}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget-wide v3, v0, Lcom/googlecode/mp4parser/boxes/b;->b:J

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_65

    :cond_7c
    iget-object v2, v0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_50

    :cond_82
    return-void
.end method

.method protected getContentSize()J
    .registers 7

    const-wide/16 v2, 0x4

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-wide/16 v0, 0x8

    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    :goto_f
    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/a;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/a;->a()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_17

    :cond_2c
    return-wide v1

    :cond_2d
    move-wide v0, v2

    goto :goto_f
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getEntrySizes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/a;

    iget-object v1, v0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    array-length v1, v1

    int-to-short v1, v1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v4

    if-eqz v4, :cond_3d

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iget-object v0, v0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    int-to-short v0, v0

    :goto_34
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3c
    return-object v2

    :cond_3d
    move v0, v1

    goto :goto_34
.end method

.method public getIvSize()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    return v0
.end method

.method public getKid()[B
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    return-object v0
.end method

.method public getOffsetToFirstIV()I
    .registers 5

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getSize()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const/16 v0, 0x10

    :goto_f
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x14

    :goto_17
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_1b
    const/16 v0, 0x8

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getSampleCount()I
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    if-eqz v2, :cond_21

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_21
    add-int/2addr v0, v1

    return v0

    :cond_23
    move v0, v1

    goto :goto_14
.end method

.method public isOverrideTrackEncryptionBoxParameters()Z
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSubSampleEncryption()Z
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAlgorithmId(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->algorithmId:I

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->entries:Ljava/util/List;

    return-void
.end method

.method public setIvSize(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    return-void
.end method

.method public setKid([B)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->kid:[B

    return-void
.end method

.method public setOverrideTrackEncryptionBoxParameters(Z)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    const v1, 0xfffffe

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    goto :goto_b
.end method

.method public setSubSampleEncryption(Z)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->getFlags()I

    move-result v0

    const v1, 0xfffffd

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->setFlags(I)V

    goto :goto_b
.end method
