.class public final Lcom/google/zxing/multi/ByQuadrantReader;
.super Ljava/lang/Object;
.source "ByQuadrantReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/ByQuadrantReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v5

    div-int/lit8 v4, v10, 0x2

    div-int/lit8 v3, v5, 0x2

    invoke-virtual {p1, v12, v12, v4, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v8

    :try_start_11
    iget-object v11, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v11, v8, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_16
    .catch Lcom/google/zxing/NotFoundException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object v11

    :goto_17
    return-object v11

    :catch_18
    move-exception v11

    invoke-virtual {p1, v4, v12, v4, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    :try_start_1d
    iget-object v11, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v11, v9, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_22
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1d .. :try_end_22} :catch_24

    move-result-object v11

    goto :goto_17

    :catch_24
    move-exception v11

    invoke-virtual {p1, v12, v3, v4, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v0

    :try_start_29
    iget-object v11, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v11, v0, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_2e
    .catch Lcom/google/zxing/NotFoundException; {:try_start_29 .. :try_end_2e} :catch_30

    move-result-object v11

    goto :goto_17

    :catch_30
    move-exception v11

    invoke-virtual {p1, v4, v3, v4, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v1

    :try_start_35
    iget-object v11, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v11, v1, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_3a
    .catch Lcom/google/zxing/NotFoundException; {:try_start_35 .. :try_end_3a} :catch_3c

    move-result-object v11

    goto :goto_17

    :catch_3c
    move-exception v11

    div-int/lit8 v7, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v7, v6, v4, v3}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    iget-object v11, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v11, v2, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v11

    goto :goto_17
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    return-void
.end method
