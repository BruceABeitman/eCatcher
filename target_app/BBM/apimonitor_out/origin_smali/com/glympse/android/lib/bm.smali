.class Lcom/glympse/android/lib/bm;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# static fields
.field public static final kB:I = 0x3e8

.field public static final kC:I = 0xea60


# instance fields
.field protected kD:I

.field protected kE:D

.field protected kF:I

.field protected kG:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/glympse/android/lib/bm;->kD:I

    invoke-static {}, Lcom/glympse/android/lib/bm;->aj()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/bm;->kE:D

    invoke-virtual {p0}, Lcom/glympse/android/lib/bm;->reset()V

    return-void
.end method

.method public static a(DI)I
    .registers 9

    invoke-static {}, Lcom/glympse/android/lib/bm;->aV()D

    move-result-wide v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    int-to-double v2, p2

    sub-double/2addr v2, v0

    int-to-double v4, p2

    add-double/2addr v0, v4

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v0, v4

    mul-double/2addr v0, p0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static aV()D
    .registers 2

    const-wide/high16 v0, 0x3fe0

    return-wide v0
.end method

.method public static aj()D
    .registers 2

    const-wide/high16 v0, 0x3ff8

    return-wide v0
.end method

.method private bb()V
    .registers 7

    iget v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    int-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L

    iget-wide v4, p0, Lcom/glympse/android/lib/bm;->kE:D

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_15

    const v0, 0xea60

    iput v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    :goto_14
    return-void

    :cond_15
    iget v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/glympse/android/lib/bm;->kE:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    goto :goto_14
.end method


# virtual methods
.method public a(D)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/bm;->kE:D

    return-void
.end method

.method public aW()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    return v0
.end method

.method public aX()I
    .registers 4

    invoke-static {}, Lcom/glympse/android/hal/Platform;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/glympse/android/lib/bm;->kF:I

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/bm;->a(DI)I

    move-result v0

    invoke-direct {p0}, Lcom/glympse/android/lib/bm;->bb()V

    return v0
.end method

.method public aY()I
    .registers 3

    iget v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    add-int/lit16 v0, v0, 0x7d0

    const/16 v1, 0x6d60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/glympse/android/lib/bm;->kG:I

    iget v0, p0, Lcom/glympse/android/lib/bm;->kG:I

    return v0
.end method

.method public aZ()I
    .registers 2

    const/16 v0, 0x6d60

    return v0
.end method

.method public ba()J
    .registers 3

    iget v0, p0, Lcom/glympse/android/lib/bm;->kG:I

    add-int/lit16 v0, v0, 0x6d60

    add-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    return-wide v0
.end method

.method public k(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/bm;->kD:I

    invoke-virtual {p0}, Lcom/glympse/android/lib/bm;->reset()V

    return-void
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/bm;->kD:I

    iput v0, p0, Lcom/glympse/android/lib/bm;->kF:I

    return-void
.end method
