.class public final Lcom/instagram/cliffjumper/edit/common/ui/g;
.super Landroid/widget/RadioButton;
.source "TileButton.java"


# static fields
.field private static a:I


# instance fields
.field private A:[I

.field private final b:Lcom/instagram/cliffjumper/edit/common/ui/c;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint$FontMetrics;

.field private final g:F

.field private final h:F

.field private final i:I

.field private final j:F

.field private final k:F

.field private final l:I

.field private final m:Landroid/graphics/Rect;

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private final r:F

.field private final s:Lcom/instagram/cliffjumper/edit/common/ui/h;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/ColorFilter;

.field private y:Z

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    sput v0, Lcom/instagram/cliffjumper/edit/common/ui/g;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/common/ui/c;I)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->u:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->z:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    invoke-virtual {p0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setFocusable(Z)V

    iput p3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->l:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_38

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->e()V

    :cond_38
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/c;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->d()V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->effect_tile_highlight_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->h:F

    sget v2, Lcom/facebook/at;->effect_tile_divider_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->i:I

    sget v2, Lcom/facebook/at;->effect_tile_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->j:F

    if-eqz v0, :cond_da

    sget v0, Lcom/facebook/at;->effect_tile_text_size_large:I

    :goto_7d
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->k:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->g:F

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->r:F

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/ui/g;->i()Z

    move-result v0

    if-eqz v0, :cond_dd

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/ui/i;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/common/ui/i;-><init>(Landroid/view/View;)V

    :goto_d7
    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    return-void

    :cond_da
    sget v0, Lcom/facebook/at;->effect_tile_text_size_small:I

    goto :goto_7d

    :cond_dd
    new-instance v0, Lcom/instagram/cliffjumper/edit/common/ui/j;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/common/ui/j;-><init>(Landroid/view/View;)V

    goto :goto_d7
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :goto_b
    return-void

    :pswitch_c
    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->g()V

    :goto_11
    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPressed(Z)V

    goto :goto_b

    :cond_15
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->h()V

    goto :goto_11

    :pswitch_19
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->performClick()Z

    :cond_1e
    :pswitch_1e
    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPressed(Z)V

    goto :goto_b

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
        :pswitch_c
        :pswitch_1e
    .end packed-switch
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->A:[I

    aget v4, v4, v5

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->z:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/instagram/cliffjumper/edit/common/ui/g;->a:I

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->y:Z

    return v0
.end method

.method private g()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a(F)V

    goto :goto_b
.end method

.method private getAdjustedImageDrawBounds()Landroid/graphics/Rect;
    .registers 7

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->d()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/common/ui/h;->d()F

    move-result v3

    sub-float v3, v4, v3

    const v4, 0x3da3d708

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    float-to-int v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    float-to-int v5, v2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    float-to-int v1, v1

    sub-int v1, v5, v1

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    float-to-int v2, v2

    sub-int v2, v5, v2

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10
.end method

.method private h()V
    .registers 3

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a(F)V

    goto :goto_c
.end method

.method private static final i()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->u:Z

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->v:Z

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->w:Z

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->x:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final getPaddingRight()I
    .registers 3

    invoke-super {p0}, Landroid/widget/RadioButton;->getPaddingRight()I

    move-result v1

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->v:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->i:I

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->b:Lcom/instagram/cliffjumper/edit/common/ui/c;

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e6

    sget v0, Lcom/facebook/as;->grey_9:I

    :goto_e
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getAdjustedImageDrawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->w:Z

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->x:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_36
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->s:Lcom/instagram/cliffjumper/edit/common/ui/h;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->d()F

    move-result v0

    sub-float v0, v2, v0

    const v1, 0x3d4cccd0

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->k:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->c:Ljava/lang/String;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->n:F

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->o:F

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    if-nez v0, :cond_77

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->f()Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_77
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->u:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_9b
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b4
    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->v:Z

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->p:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->q:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_e5
    return-void

    :cond_e6
    sget v0, Lcom/facebook/as;->transparent:I

    goto/16 :goto_e

    :cond_ea
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_36

    :cond_f2
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->grey_5:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_9b
.end method

.method protected final onMeasure(II)V
    .registers 13

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getPaddingLeft()I

    move-result v2

    float-to-int v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->j:F

    iget v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->g:F

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    float-to-int v4, v4

    sub-int/2addr v3, v4

    float-to-int v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->j:F

    iget v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->g:F

    add-float/2addr v5, v6

    div-float/2addr v5, v9

    float-to-int v5, v5

    sub-int/2addr v4, v5

    float-to-int v5, v1

    iget-object v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    float-to-int v6, v1

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    div-int/lit8 v5, v6, 0x2

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->m:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v2, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v9

    add-float/2addr v1, v2

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->n:F

    int-to-float v1, v4

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->o:F

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->o:F

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->j:F

    iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->g:F

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->o:F

    const/4 v1, 0x0

    int-to-float v2, v3

    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->r:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->q:I

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->o:F

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->f:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->r:F

    add-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->p:I

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    invoke-super {p0}, Landroid/widget/RadioButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final setActive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->y:Z

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->d()V

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->invalidate()V

    return-void
.end method

.method public final setChecked(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final toggle()V
    .registers 3

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->l:I

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->a:I

    if-ne v0, v1, :cond_a

    invoke-super {p0}, Landroid/widget/RadioButton;->toggle()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->l:I

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->b:I

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_9

    :cond_1a
    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/g;->l:I

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/k;->c:I

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_9
.end method
