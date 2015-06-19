.class public final Lcom/spotify/mobile/android/spotlets/tinkerbell/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private d:Lcom/spotify/mobile/android/spotlets/tinkerbell/e;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    const v2, 0x7f090077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->l:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a039c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->q:Landroid/widget/ImageButton;

    const v0, 0x7f0a0399

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    const v1, 0x7f0a039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->t:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->n:F

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->o:F

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->p:F

    return p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)Lcom/spotify/mobile/android/spotlets/tinkerbell/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d:Lcom/spotify/mobile/android/spotlets/tinkerbell/e;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->v:I

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/tinkerbell/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d:Lcom/spotify/mobile/android/spotlets/tinkerbell/e;

    return-void
.end method

.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->setVisibility(I)V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->setVisibility(I)V

    goto :goto_7
.end method

.method public final b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->q:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected final d()V
    .registers 15

    const/4 v13, 0x0

    const-wide/16 v11, 0x96

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->getDrawingRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->v:I

    if-lez v1, :cond_2c

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->v:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    :cond_2c
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->g:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->h:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->i:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->j:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->k:I

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->l:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->m:F

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sget-object v1, Landroid/view/View;->X:Landroid/util/Property;

    new-array v2, v8, [F

    const/high16 v3, 0x41a0

    add-float/2addr v3, v0

    aput v3, v2, v9

    aput v0, v2, v10

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_170

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v9

    aput-object v0, v3, v10

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_178

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_180

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->q:Landroid/widget/ImageButton;

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v2, v8, [F

    fill-array-data v2, :array_188

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$1;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v8, [F

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v4, v4

    aput v4, v3, v9

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->m:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$3;

    invoke-direct {v4, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$3;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v5, v5

    aput v5, v4, v9

    aput v13, v4, v10

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->m:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$4;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$4;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v8, [F

    aput v13, v5, v9

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v6, v6

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v6, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$5;

    invoke-direct {v6, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$5;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v7, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;

    invoke-direct {v7, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$6;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v9

    aput-object v3, v7, v10

    aput-object v4, v7, v8

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v0, v7, v2

    const/4 v0, 0x5

    aput-object v1, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_170
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_178
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_180
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_188
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected final e()V
    .registers 16

    const/4 v14, 0x0

    const-wide/16 v12, 0x64

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->r:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v9, [F

    fill-array-data v2, :array_116

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v9, [F

    fill-array-data v2, :array_11e

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v9, [F

    fill-array-data v3, :array_126

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v9, [F

    fill-array-data v4, :array_12e

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->q:Landroid/widget/ImageButton;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v2, v9, [F

    fill-array-data v2, :array_136

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$7;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$7;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v9, [F

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->m:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v10

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v4, v4

    aput v4, v3, v11

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$8;

    invoke-direct {v4, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$8;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v4, ""

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Keyframe;

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->m:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v14, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x3e2aaaab

    invoke-static {v6, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v5, v11

    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$9;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$9;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v9, [F

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->u:I

    int-to-float v6, v6

    aput v6, v5, v10

    aput v14, v5, v11

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v6, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$10;

    invoke-direct {v6, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$10;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v10

    aput-object v1, v7, v11

    aput-object v2, v7, v9

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$2;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_116
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_11e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_126
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_136
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->o:F

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->n:F

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->p:F

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->h:I

    int-to-float v4, v4

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->i:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    int-to-float v4, v4

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->i:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->j:I

    int-to-float v6, v6

    iget v7, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->i:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->j:I

    int-to-float v4, v4

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->k:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    int-to-float v4, v4

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->k:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->h:I

    int-to-float v5, v5

    iget v6, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->k:I

    int-to-float v6, v6

    sub-float v1, v6, v1

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    int-to-float v1, v1

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->g:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->g:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->f:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
