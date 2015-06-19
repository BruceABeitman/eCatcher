.class public final Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
.super Ljava/lang/Object;
.source "FreqFilterNative.java"


# static fields
.field private static a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    iput-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->c:Z

    iput v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->d:I

    iput v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    iput v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->f:I

    return-void
.end method

.method private a([F)I
    .registers 4

    array-length v0, p1

    iget v1, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->f:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private a()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v2, "FreqFilter"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v2, "FreqFilter"

    const-string/jumbo v3, "FreqFilter: load native library success!"

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_32

    const/4 v1, 0x1

    :goto_11
    return v1

    :catch_12
    move-exception v0

    const-string/jumbo v2, "FreqFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t load native library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_32
    move-exception v0

    const-string/jumbo v2, "FreqFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t load native library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private b([F)[[F
    .registers 11

    invoke-direct {p0, p1}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a([F)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v5, 0x0

    check-cast v5, [[F

    :goto_9
    return-object v5

    :cond_a
    new-array v4, v1, [[F

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_18

    iget v5, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    new-array v5, v5, [F

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    iget v5, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    mul-int v3, v1, v5

    new-array v0, v3, [F

    iget-boolean v5, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    if-eqz v5, :cond_27

    array-length v5, p1

    array-length v6, v0

    invoke-static {p1, v5, v0, v6}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->native_FreqFilterRecognizeFrequency([FI[FI)I

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_38

    iget v5, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    mul-int/2addr v5, v2

    aget-object v6, v4, v2

    const/4 v7, 0x0

    iget v8, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    invoke-static {v0, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_38
    move-object v5, v4

    goto :goto_9
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
    .registers 3

    const-class v1, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    if-nez v0, :cond_18

    new-instance v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    invoke-direct {v0}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;-><init>()V

    sput-object v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    sget-object v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    sget-object v2, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;

    invoke-direct {v2}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a()Z

    move-result v2

    iput-boolean v2, v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    :cond_18
    sget-object v0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->a:Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native native_FreqFilterFree()I
.end method

.method private static native native_FreqFilterInit(IIIII)I
.end method

.method private static native native_FreqFilterRecognizeFrequency([FI[FI)I
.end method


# virtual methods
.method public IndexToFrequency(I)I
    .registers 4

    iget v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->d:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    div-int/2addr v0, v1

    return v0
.end method

.method public RecognizeFrequency([S)[[F
    .registers 6

    array-length v2, p1

    new-array v1, v2, [F

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-short v2, p1, v0

    int-to-float v2, v2

    const/high16 v3, 0x4700

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    invoke-direct {p0, v1}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b([F)[[F

    move-result-object v2

    return-object v2
.end method

.method public free()V
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->native_FreqFilterFree()I

    :cond_7
    return-void
.end method

.method public isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    return v0
.end method

.method public prepare(IIIII)V
    .registers 7

    iget-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->d:I

    iput p2, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->e:I

    iput p3, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->f:I

    iget-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->b:Z

    if-eqz v0, :cond_12

    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->native_FreqFilterInit(IIIII)I

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->c:Z

    goto :goto_4
.end method
