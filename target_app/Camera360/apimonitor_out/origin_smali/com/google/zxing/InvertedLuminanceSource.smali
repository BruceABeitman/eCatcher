.class public final Lcom/google/zxing/InvertedLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "InvertedLuminanceSource.java"


# instance fields
.field private final delegate:Lcom/google/zxing/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .registers 7

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/zxing/LuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getMatrix()[B
    .registers 7

    iget-object v4, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v4}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getHeight()I

    move-result v5

    mul-int v2, v4, v5

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_21

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-object v1
.end method

.method public getRow(I[B)[B
    .registers 6

    iget-object v2, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v2, p1, p2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getWidth()I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_19

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    return-object p2
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    return-object v0
.end method

.method public isCropSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public isRotateSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .registers 3

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .registers 3

    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method
