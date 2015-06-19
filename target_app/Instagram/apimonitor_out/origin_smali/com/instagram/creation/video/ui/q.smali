.class public final Lcom/instagram/creation/video/ui/q;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/creation/video/ui/q;->d:I

    return-void
.end method

.method public final a(II)V
    .registers 3

    iput p1, p0, Lcom/instagram/creation/video/ui/q;->b:I

    iput p2, p0, Lcom/instagram/creation/video/ui/q;->c:I

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/c;IIIILcom/instagram/creation/video/a/a;Lcom/instagram/creation/video/gl/x;)Z
    .registers 22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/instagram/creation/video/ui/q;->a:J

    sub-long/2addr v1, v3

    long-to-float v3, v1

    const/high16 v4, 0x43c8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    const/4 v1, 0x0

    :goto_f
    return v1

    :cond_10
    long-to-float v1, v1

    const/high16 v2, 0x43c8

    div-float v7, v1, v2

    move/from16 v0, p2

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v2, v0

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p5

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v5, v1, v3

    const/high16 v1, 0x3f80

    const v3, 0x3e4ccccd

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    move/from16 v0, p4

    int-to-float v3, v0

    mul-float v6, v3, v1

    move/from16 v0, p5

    int-to-float v3, v0

    mul-float v8, v3, v1

    const/high16 v1, 0x4000

    div-float v1, v6, v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v1, 0x4000

    div-float v1, v8, v1

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v1, 0x3f80

    const/high16 v9, 0x3f00

    mul-float/2addr v9, v7

    add-float/2addr v9, v1

    const/high16 v1, 0x3f80

    iget v10, p0, Lcom/instagram/creation/video/ui/q;->d:I

    if-eqz v10, :cond_b8

    move/from16 v0, p4

    int-to-float v1, v0

    iget v10, p0, Lcom/instagram/creation/video/ui/q;->d:I

    int-to-float v10, v10

    div-float/2addr v1, v10

    :goto_65
    iget v10, p0, Lcom/instagram/creation/video/ui/q;->b:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    mul-float/2addr v10, v1

    iget v11, p0, Lcom/instagram/creation/video/ui/q;->c:I

    int-to-float v11, v11

    mul-float/2addr v9, v11

    mul-float/2addr v9, v1

    const/high16 v1, 0x4000

    div-float v1, v10, v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/high16 v1, 0x4000

    div-float v1, v9, v1

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->a()F

    move-result v13

    invoke-interface {p1, v7}, Lcom/instagram/creation/video/gl/c;->a(F)V

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/instagram/creation/video/a/a;->a(Lcom/instagram/creation/video/gl/c;IIII)V

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v7

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/instagram/creation/video/gl/c;->a(F)V

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p7

    move-object v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/instagram/creation/video/gl/x;->a(Lcom/instagram/creation/video/gl/c;IIII)V

    invoke-interface {p1, v13}, Lcom/instagram/creation/video/gl/c;->a(F)V

    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_b8
    const-string v10, "SwitchAnimManager"

    const-string v11, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v10, v11}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method

.method public final a(Lcom/instagram/creation/video/gl/c;IIIILcom/instagram/creation/video/gl/x;)Z
    .registers 14

    const/high16 v5, 0x4000

    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    int-to-float v0, p3

    int-to-float v2, p5

    div-float/2addr v2, v5

    add-float v3, v0, v2

    const/high16 v0, 0x3f80

    iget v2, p0, Lcom/instagram/creation/video/ui/q;->d:I

    if-eqz v2, :cond_4a

    int-to-float v0, p4

    iget v2, p0, Lcom/instagram/creation/video/ui/q;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_16
    iget v2, p0, Lcom/instagram/creation/video/ui/q;->b:I

    int-to-float v2, v2

    mul-float v4, v2, v0

    iget v2, p0, Lcom/instagram/creation/video/ui/q;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float v2, v4, v5

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-float v1, v0, v5

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->a()F

    move-result v6

    const v1, 0x3f4ccccd

    invoke-interface {p1, v1}, Lcom/instagram/creation/video/gl/c;->a(F)V

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/video/gl/x;->a(Lcom/instagram/creation/video/gl/c;IIII)V

    invoke-interface {p1, v6}, Lcom/instagram/creation/video/gl/c;->a(F)V

    const/4 v0, 0x1

    return v0

    :cond_4a
    const-string v2, "SwitchAnimManager"

    const-string v4, "mPreviewFrameLayoutWidth is 0."

    invoke-static {v2, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method
