.class public final Lcom/ibm/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source "USerializedSet.java"


# instance fields
.field private array:[C

.field private arrayOffset:I

.field private bmpLength:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v3, 0x10ffff

    if-le p1, v3, :cond_9

    move v3, v5

    :goto_8
    return v3

    :cond_9
    const v3, 0xffff

    if-gt p1, v3, :cond_25

    const/4 v1, 0x0

    :goto_f
    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    if-ge v1, v3, :cond_1d

    int-to-char v3, p1

    iget-object v4, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aget-char v4, v4, v1

    if-lt v3, v4, :cond_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_23

    move v3, v6

    goto :goto_8

    :cond_23
    move v3, v5

    goto :goto_8

    :cond_25
    shr-int/lit8 v3, p1, 0x10

    int-to-char v0, v3

    int-to-char v2, p1

    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    :goto_2b
    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    if-ge v1, v3, :cond_46

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aget-char v3, v3, v1

    if-gt v0, v3, :cond_43

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aget-char v3, v3, v1

    if-ne v0, v3, :cond_46

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v4

    if-lt v2, v3, :cond_46

    :cond_43
    add-int/lit8 v1, v1, 0x2

    goto :goto_2b

    :cond_46
    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    add-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4f

    move v3, v6

    goto :goto_8

    :cond_4f
    move v3, v5

    goto :goto_8
.end method

.method public final countRanges()I
    .registers 4

    iget v0, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getRange(I[I)Z
    .registers 11

    const/high16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-gez p1, :cond_8

    move v2, v6

    :goto_7
    return v2

    :cond_8
    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    if-nez v2, :cond_12

    const/16 v2, 0x8

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    :cond_12
    if-eqz p2, :cond_18

    array-length v2, p2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1e

    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1e
    mul-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    if-ge p1, v2, :cond_55

    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v2, v2, p1

    aput v2, p2, v6

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    if-ge v1, v2, :cond_3e

    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aget-char v2, v2, v1

    aput v2, p2, v5

    :goto_36
    aget v2, p2, v5

    sub-int/2addr v2, v5

    aput v2, p2, v5

    move p1, v1

    move v2, v5

    goto :goto_7

    :cond_3e
    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aget-char v2, v2, v1

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_36

    :cond_52
    aput v7, p2, v5

    goto :goto_36

    :cond_55
    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    if-ge p1, v2, :cond_a2

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->arrayOffset:I

    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int v3, v0, p1

    aget-char v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int v4, v0, p1

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v6

    add-int/lit8 p1, p1, 0x2

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    if-ge p1, v2, :cond_9f

    iget-object v2, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int v3, v0, p1

    aget-char v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int v4, v0, p1

    add-int/lit8 v4, v4, 0x1

    aget-char v3, v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v5

    :goto_97
    aget v2, p2, v5

    sub-int/2addr v2, v5

    aput v2, p2, v5

    move v2, v5

    goto/16 :goto_7

    :cond_9f
    aput v7, p2, v5

    goto :goto_97

    :cond_a2
    move v2, v6

    goto/16 :goto_7
.end method

.method public final getSet([CI)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->arrayOffset:I

    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    iput v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-lez v1, :cond_43

    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2e

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2e
    add-int/lit8 p2, v0, 0x1

    aget-char v1, p1, v0

    iput v1, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    :goto_34
    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    invoke-static {p1, p2, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    return v1

    :cond_43
    array-length v1, p1

    iget v2, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_51

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_51
    iget v1, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iput v1, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    move p2, v0

    goto :goto_34
.end method

.method public final setToOne(I)V
    .registers 9

    const/4 v6, 0x3

    const v5, 0xffff

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x10ffff

    if-ge v0, p1, :cond_d

    :goto_c
    return-void

    :cond_d
    if-ge p1, v5, :cond_20

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_c

    :cond_20
    if-ne p1, v5, :cond_33

    iput v3, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iput v6, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aput-char v5, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aput-char v3, v0, v3

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aput-char v2, v0, v4

    goto :goto_c

    :cond_33
    const v0, 0x10ffff

    if-ge p1, v0, :cond_58

    iput v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    aput-char v1, v0, v4

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v6

    goto :goto_c

    :cond_58
    iput v2, p0, Lcom/ibm/icu/impl/USerializedSet;->bmpLength:I

    iput v4, p0, Lcom/ibm/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    const/16 v1, 0x10

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/ibm/icu/impl/USerializedSet;->array:[C

    aput-char v5, v0, v3

    goto :goto_c
.end method
