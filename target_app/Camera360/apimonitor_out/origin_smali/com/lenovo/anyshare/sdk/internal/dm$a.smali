.class Lcom/lenovo/anyshare/sdk/internal/dm$a;
.super Ljava/lang/Object;
.source "SampleEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:S

.field public e:S


# direct methods
.method public constructor <init>(ISF)V
    .registers 15

    const/16 v10, 0x7ef4

    const-wide v8, 0x401921fb54442d18L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-double v4, p2

    int-to-double v6, p1

    div-double v0, v4, v6

    const-wide v4, -0x3f20c00000000000L

    mul-double v6, v8, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    double-to-int v4, v2

    int-to-short v4, v4

    iput-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->d:S

    const/4 v4, 0x0

    iput-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->b:S

    iget-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->d:S

    iput-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->c:S

    const-wide v4, 0x41cfff8000800000L

    float-to-double v6, p3

    mul-double/2addr v4, v6

    const-wide v6, 0x40df400000000000L

    div-double/2addr v4, v6

    double-to-int v4, v4

    int-to-short v4, v4

    iput-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->e:S

    iget-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->e:S

    if-le v4, v10, :cond_3d

    iput-short v10, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->e:S

    :cond_3d
    const-wide/high16 v4, 0x40e0

    mul-double v6, v8, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v2, v4, v6

    const-wide v4, 0x40dfffc000000000L

    cmpl-double v4, v2, v4

    if-lez v4, :cond_55

    const-wide v2, 0x40dfffc000000000L

    :cond_55
    double-to-int v4, v2

    int-to-short v4, v4

    iput-short v4, p0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->a:S

    return-void
.end method


# virtual methods
.method public a([SIII)V
    .registers 22

    if-nez p4, :cond_1e

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->d:S

    int-to-long v12, v14

    :goto_9
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->a:S

    int-to-long v6, v14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->e:S

    int-to-long v8, v14

    const/4 v14, 0x2

    move/from16 v0, p4

    if-ne v0, v14, :cond_68

    const/16 v14, 0x10

    shl-long/2addr v8, v14

    if-nez p3, :cond_36

    :goto_1d
    return-void

    :cond_1e
    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_2e

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->b:S

    int-to-long v10, v14

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->c:S

    int-to-long v12, v14

    goto :goto_9

    :cond_2e
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->d:S

    int-to-long v12, v14

    goto :goto_9

    :cond_36
    move/from16 v0, p3

    int-to-long v14, v0

    div-long v3, v8, v14

    const/4 v5, 0x0

    :goto_3c
    move/from16 v0, p3

    if-ge v5, v0, :cond_91

    mul-long v14, v6, v10

    const/16 v16, 0xe

    shr-long v14, v14, v16

    sub-long v1, v14, v12

    move-wide v12, v10

    move-wide v10, v1

    const/16 v14, 0x10

    shr-long v14, v8, v14

    mul-long/2addr v14, v1

    const/16 v16, 0xf

    shr-long v1, v14, v16

    add-int v14, v5, p2

    aget-short v15, p1, v14

    long-to-int v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    sub-long/2addr v8, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_68
    const/4 v5, 0x0

    :goto_69
    move/from16 v0, p3

    if-ge v5, v0, :cond_91

    mul-long v14, v6, v10

    const/16 v16, 0xe

    shr-long v14, v14, v16

    sub-long v1, v14, v12

    move-wide v12, v10

    move-wide v10, v1

    mul-long v14, v8, v1

    const/16 v16, 0xf

    shr-long v1, v14, v16

    add-int v14, v5, p2

    aget-short v15, p1, v14

    long-to-int v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-short v15, v15

    aput-short v15, p1, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_91
    long-to-int v14, v10

    int-to-short v14, v14

    move-object/from16 v0, p0

    iput-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->b:S

    long-to-int v14, v12

    int-to-short v14, v14

    move-object/from16 v0, p0

    iput-short v14, v0, Lcom/lenovo/anyshare/sdk/internal/dm$a;->c:S

    goto :goto_1d
.end method
