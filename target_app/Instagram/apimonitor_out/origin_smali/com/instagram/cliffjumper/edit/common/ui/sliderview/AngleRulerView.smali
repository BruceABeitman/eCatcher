.class public Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
.super Landroid/view/View;
.source "AngleRulerView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint$FontMetrics;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/as;->grey_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a()V

    return-void
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->sliderview_ruler_angle_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    invoke-static {v0, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->i:I

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->j:I

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->angle_ruler_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->k:I

    sget v1, Lcom/facebook/at;->angle_ruler_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    sget v1, Lcom/facebook/at;->angle_ruler_small_line_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->m:I

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->sliderview_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    rem-int/lit8 v1, v1, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-eq v1, v0, :cond_91

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    :cond_91
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .registers 10

    const/high16 v2, 0x4000

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float v1, p2, v0

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float v3, p2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLineBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFF)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p2, :cond_2f

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    :cond_2f
    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .registers 10

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3f80

    add-float v3, p2, v0

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLineBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getLineBottom()I
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->k:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->c:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->i:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/4 v0, 0x0

    :goto_13
    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    if-gt v0, v3, :cond_50

    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    rem-int/lit8 v5, v3, 0x5

    if-nez v5, :cond_39

    invoke-direct {p0, p1, v4, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a(Landroid/graphics/Canvas;FF)V

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41f0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_36

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->a(Landroid/graphics/Canvas;IFF)V

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_39
    iget v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->j:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->l:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->m:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-direct {p0, p1, v4, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_36

    :cond_50
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    div-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->f:I

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->setMeasuredDimension(II)V

    return-void
.end method
