.class public Lcom/twidroid/ui/b/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/Path;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 9

    const/16 v1, 0x64

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, 0x3c8a8b90

    iput v0, p0, Lcom/twidroid/ui/b/b;->d:I

    const v0, -0x757470

    iput v0, p0, Lcom/twidroid/ui/b/b;->e:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/b/b;->f:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/twidroid/ui/b/b;->g:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/twidroid/ui/b/b;->k:I

    iput v1, p0, Lcom/twidroid/ui/b/b;->o:I

    iput v1, p0, Lcom/twidroid/ui/b/b;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/b/b;->r:Z

    iput p1, p0, Lcom/twidroid/ui/b/b;->f:I

    int-to-float v0, p1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/twidroid/ui/b/b;->g:I

    mul-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/twidroid/ui/b/b;->q:I

    iput p2, p0, Lcom/twidroid/ui/b/b;->k:I

    iput p3, p0, Lcom/twidroid/ui/b/b;->l:I

    iput p5, p0, Lcom/twidroid/ui/b/b;->n:I

    iput p4, p0, Lcom/twidroid/ui/b/b;->m:I

    invoke-direct {p0, p6}, Lcom/twidroid/ui/b/b;->a(I)V

    return-void
.end method

.method public constructor <init>(IIIIIIZ)V
    .registers 10

    const/16 v1, 0x64

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, 0x3c8a8b90

    iput v0, p0, Lcom/twidroid/ui/b/b;->d:I

    const v0, -0x757470

    iput v0, p0, Lcom/twidroid/ui/b/b;->e:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/twidroid/ui/b/b;->f:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/twidroid/ui/b/b;->g:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/twidroid/ui/b/b;->k:I

    iput v1, p0, Lcom/twidroid/ui/b/b;->o:I

    iput v1, p0, Lcom/twidroid/ui/b/b;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/ui/b/b;->r:Z

    iput p1, p0, Lcom/twidroid/ui/b/b;->f:I

    int-to-float v0, p1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/twidroid/ui/b/b;->g:I

    mul-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/twidroid/ui/b/b;->q:I

    iput p2, p0, Lcom/twidroid/ui/b/b;->k:I

    iput p3, p0, Lcom/twidroid/ui/b/b;->l:I

    iput p5, p0, Lcom/twidroid/ui/b/b;->n:I

    iput p4, p0, Lcom/twidroid/ui/b/b;->m:I

    iput-boolean p7, p0, Lcom/twidroid/ui/b/b;->r:Z

    invoke-direct {p0, p6}, Lcom/twidroid/ui/b/b;->a(I)V

    return-void
.end method

.method private a()V
    .registers 1

    return-void
.end method

.method private a(I)V
    .registers 5

    const/high16 v2, 0x3c00

    const v1, 0xffffff

    and-int v0, p1, v1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/twidroid/ui/b/b;->d:I

    and-int v0, p1, v1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/twidroid/ui/b/b;->e:I

    return-void
.end method

.method private b(I)Landroid/graphics/Path;
    .registers 10

    const/high16 v7, 0x42b4

    const/4 v0, 0x3

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/b/b;->q:I

    iget v4, p0, Lcom/twidroid/ui/b/b;->g:I

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v2, p1

    iget v3, p0, Lcom/twidroid/ui/b/b;->q:I

    iget v4, p0, Lcom/twidroid/ui/b/b;->g:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/b/b;->q:I

    add-int/2addr v3, v0

    add-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    add-int v3, v0, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    add-int/lit8 v4, p1, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v5, p1

    int-to-float v5, v5

    add-int/lit8 v6, p1, 0x6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x4334

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->p:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, p1

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/twidroid/ui/b/b;->p:I

    add-int/lit8 v3, v3, -0x6

    sub-int/2addr v3, p1

    int-to-float v3, v3

    add-int/lit8 v4, p1, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/twidroid/ui/b/b;->p:I

    sub-int/2addr v5, p1

    int-to-float v5, v5

    add-int/lit8 v6, p1, 0x6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x4387

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->p:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/b/b;->o:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/twidroid/ui/b/b;->p:I

    add-int/lit8 v3, v3, -0x6

    sub-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/twidroid/ui/b/b;->o:I

    add-int/lit8 v4, v4, -0x6

    sub-int/2addr v4, p1

    int-to-float v4, v4

    iget v5, p0, Lcom/twidroid/ui/b/b;->p:I

    sub-int/2addr v5, p1

    int-to-float v5, v5

    iget v6, p0, Lcom/twidroid/ui/b/b;->o:I

    sub-int/2addr v6, p1

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43b4

    invoke-virtual {v1, v2, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, v0

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/b/b;->o:I

    sub-int/2addr v3, p1

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/twidroid/ui/b/b;->o:I

    add-int/lit8 v4, v4, -0x6

    sub-int/2addr v4, p1

    int-to-float v4, v4

    iget v5, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v5, p1

    int-to-float v5, v5

    iget v6, p0, Lcom/twidroid/ui/b/b;->o:I

    sub-int/2addr v6, p1

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, v7, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v2, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/b/b;->q:I

    iget v4, p0, Lcom/twidroid/ui/b/b;->g:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v0, p0, Lcom/twidroid/ui/b/b;->r:Z

    if-eqz v0, :cond_f3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/twidroid/ui/b/b;->p:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    :cond_f3
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->a:Landroid/graphics/Paint;

    if-nez v0, :cond_44

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lcom/twidroid/ui/b/b;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/twidroid/ui/b/b;->o:I

    int-to-float v4, v2

    iget v5, p0, Lcom/twidroid/ui/b/b;->m:I

    iget v6, p0, Lcom/twidroid/ui/b/b;->n:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twidroid/ui/b/b;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/twidroid/ui/b/b;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_44
    iget-object v0, p0, Lcom/twidroid/ui/b/b;->h:Landroid/graphics/Path;

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twidroid/ui/b/b;->b(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->i:Landroid/graphics/Path;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twidroid/ui/b/b;->b(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->j:Landroid/graphics/Path;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twidroid/ui/b/b;->b(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->h:Landroid/graphics/Path;

    :cond_5d
    iget-object v0, p0, Lcom/twidroid/ui/b/b;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/twidroid/ui/b/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/twidroid/ui/b/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/twidroid/ui/b/b;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/twidroid/ui/b/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/twidroid/ui/b/b;->r:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/twidroid/ui/b/b;->k:I

    iget v1, p0, Lcom/twidroid/ui/b/b;->k:I

    iget v2, p0, Lcom/twidroid/ui/b/b;->k:I

    iget v3, p0, Lcom/twidroid/ui/b/b;->f:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/twidroid/ui/b/b;->k:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_12
    const/4 v0, 0x1

    return v0

    :cond_14
    iget v0, p0, Lcom/twidroid/ui/b/b;->f:I

    iget v1, p0, Lcom/twidroid/ui/b/b;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twidroid/ui/b/b;->k:I

    iget v2, p0, Lcom/twidroid/ui/b/b;->k:I

    iget v3, p0, Lcom/twidroid/ui/b/b;->k:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    iput p4, p0, Lcom/twidroid/ui/b/b;->o:I

    iput p3, p0, Lcom/twidroid/ui/b/b;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->h:Landroid/graphics/Path;

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 4

    const-string v0, "BackgroundDrawable"

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/ui/b/b;->h:Landroid/graphics/Path;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
