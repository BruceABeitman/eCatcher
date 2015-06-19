.class public final Lit/sephiroth/android/library/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:F

.field private static g:F


# instance fields
.field private a:I

.field private final b:Lit/sephiroth/android/library/widget/y;

.field private final c:Lit/sephiroth/android/library/widget/y;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x3f80

    const/high16 v0, 0x4100

    sput v0, Lit/sephiroth/android/library/widget/x;->f:F

    sput v1, Lit/sephiroth/android/library/widget/x;->g:F

    invoke-static {v1}, Lit/sephiroth/android/library/widget/x;->b(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lit/sephiroth/android/library/widget/x;->g:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/x;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/x;-><init>(Landroid/content/Context;C)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;C)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/x;->d:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/x;->e:Z

    new-instance v0, Lit/sephiroth/android/library/widget/y;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    new-instance v0, Lit/sephiroth/android/library/widget/y;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    return-void
.end method

.method private static b(F)F
    .registers 5

    const/high16 v3, 0x3f80

    sget v0, Lit/sephiroth/android/library/widget/x;->f:F

    mul-float/2addr v0, p0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_17

    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr v0, v1

    :goto_13
    sget v1, Lit/sephiroth/android/library/widget/x;->g:F

    mul-float/2addr v0, v1

    return v0

    :cond_17
    sub-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v3, v0

    const v1, 0x3ebc5ab2

    const v2, 0x3f21d2a7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_13
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/y;->a(II)V

    return-void
.end method

.method public final a(III)V
    .registers 6

    const/4 v1, 0x0

    iput v1, p0, Lit/sephiroth/android/library/widget/x;->a:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/y;->a(III)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0, v1, v1, p3}, Lit/sephiroth/android/library/widget/y;->a(III)V

    return-void
.end method

.method public final a(IIIIII)V
    .registers 14

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/x;->e:Z

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/x;->a()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v1

    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_51

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_51

    int-to-float v2, p2

    add-float/2addr v0, v2

    float-to-int p2, v0

    add-float v0, v4, v1

    float-to-int p3, v0

    move v2, p2

    :goto_38
    const/4 v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/x;->a:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    const v4, 0x7fffffff

    move v1, p1

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/y;->a(IIIII)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    move v1, v6

    move v2, p3

    move v3, v6

    move v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/y;->a(IIIII)V

    return-void

    :cond_51
    move v2, p2

    goto :goto_38
.end method

.method final a(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/x;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->a(Lit/sephiroth/android/library/widget/y;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->a(Lit/sephiroth/android/library/widget/y;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final a(F)Z
    .registers 5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->e(Lit/sephiroth/android/library/widget/y;)I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/y;->d(Lit/sephiroth/android/library/widget/y;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/y;->e(Lit/sephiroth/android/library/widget/y;)I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/y;->d(Lit/sephiroth/android/library/widget/y;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/x;->a()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public final a(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v1, p0, Lit/sephiroth/android/library/widget/x;->a:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v2, p1}, Lit/sephiroth/android/library/widget/y;->a(I)Z

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/y;->a(I)Z

    move-result v3

    if-nez v2, :cond_14

    if-eqz v3, :cond_15

    :cond_14
    move v0, v1

    :cond_15
    return v0
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->b(Lit/sephiroth/android/library/widget/y;)I

    move-result v0

    return v0
.end method

.method public final c()F
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/y;->c(Lit/sephiroth/android/library/widget/y;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 6

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/x;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/x;->a:I

    packed-switch v0, :pswitch_data_82

    :cond_d
    :goto_d
    const/4 v0, 0x1

    goto :goto_7

    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/y;->g(Lit/sephiroth/android/library/widget/y;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/y;->f(Lit/sephiroth/android/library/widget/y;)I

    move-result v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_42

    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3b

    invoke-static {v0}, Lit/sephiroth/android/library/widget/x;->b(F)F

    move-result v0

    :goto_30
    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/y;->a(F)V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/y;->a(F)V

    goto :goto_d

    :cond_3b
    iget-object v1, p0, Lit/sephiroth/android/library/widget/x;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_30

    :cond_42
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/x;->e()V

    goto :goto_d

    :pswitch_46
    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->a(Lit/sephiroth/android/library/widget/y;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->c()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->b()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->a()V

    :cond_63
    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/y;->a(Lit/sephiroth/android/library/widget/y;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->b()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->a()V

    goto :goto_d

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_f
        :pswitch_46
    .end packed-switch
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->b:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->a()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/x;->c:Lit/sephiroth/android/library/widget/y;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/y;->a()V

    return-void
.end method
