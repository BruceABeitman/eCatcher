.class public Lcom/spotify/mobile/android/ui/view/WaveView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final f:[I

.field private static final g:[F


# instance fields
.field private a:F

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/LinearGradient;

.field private i:I

.field private j:I

.field private k:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/spotify/mobile/android/ui/view/WaveView;->f:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/spotify/mobile/android/ui/view/WaveView;->g:[F

    return-void

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->a:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/WaveView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/WaveView$1;-><init>(Lcom/spotify/mobile/android/ui/view/WaveView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->k:Landroid/view/animation/Animation;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x3f80

    sget-object v5, Lcom/spotify/mobile/android/ui/view/WaveView;->f:[I

    sget-object v6, Lcom/spotify/mobile/android/ui/view/WaveView;->g:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->h:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->h:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/WaveView;F)F
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->a:F

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->k:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/WaveView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->i:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    const/high16 v9, 0x4180

    const/high16 v8, 0x4100

    const/4 v7, 0x0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->i:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/WaveView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->j:I

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->j:I

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->i:I

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    int-to-float v0, v0

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    :goto_3c
    const/16 v3, 0x8

    if-ge v0, v3, :cond_56

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    int-to-float v4, v1

    div-float/2addr v4, v9

    neg-float v5, v2

    int-to-float v6, v1

    div-float/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->b:Landroid/graphics/Path;

    int-to-float v4, v1

    div-float/2addr v4, v9

    int-to-float v5, v1

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v2, v5, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_56
    if-eqz p1, :cond_69

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->d:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->i:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->h:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/WaveView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_69
    return-void
.end method
