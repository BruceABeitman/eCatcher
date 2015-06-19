.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .registers 12

    move v1, p3

    const/4 v6, 0x0

    move-object v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_1f

    aget v4, v0, v2

    const/4 v3, 0x0

    move v7, p1

    :goto_b
    if-ge v3, v4, :cond_15

    add-int/lit8 p1, v7, 0x1

    aput-boolean v1, p0, v7

    add-int/lit8 v3, v3, 0x1

    move v7, p1

    goto :goto_b

    :cond_15
    add-int/2addr v6, v4

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :goto_19
    add-int/lit8 v2, v2, 0x1

    move p1, v7

    goto :goto_5

    :cond_1d
    const/4 v1, 0x0

    goto :goto_19

    :cond_1f
    return v6
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .registers 14

    array-length v1, p0

    add-int v0, v1, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v4, v7, v0

    mul-int v9, v1, v4

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    move v8, v3

    :goto_1b
    if-ge v2, v1, :cond_29

    aget-boolean v9, p0, v2

    if-eqz v9, :cond_25

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v4

    goto :goto_1b

    :cond_29
    return-object v5
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Found empty contents"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    if-ltz p3, :cond_13

    if-gez p4, :cond_37

    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Negative size is not allowed. Input: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_37
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v1

    if-eqz p5, :cond_4b

    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4b
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v0

    invoke-static {v0, p3, p4, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method
