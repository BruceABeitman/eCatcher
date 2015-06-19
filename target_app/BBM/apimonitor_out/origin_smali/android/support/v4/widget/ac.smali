.class final Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field final b:Landroid/graphics/RectF;

.field c:F

.field d:J

.field e:J

.field f:Z

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/support/v4/widget/a;->a()Landroid/support/v4/widget/a;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ac;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->l:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v4/widget/ac;->k:Landroid/view/View;

    const/high16 v0, -0x4d00

    iput v0, p0, Landroid/support/v4/widget/ac;->g:I

    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v4/widget/ac;->h:I

    const/high16 v0, 0x4d00

    iput v0, p0, Landroid/support/v4/widget/ac;->i:I

    const/high16 v0, 0x1a00

    iput v0, p0, Landroid/support/v4/widget/ac;->j:I

    return-void
.end method


# virtual methods
.method final a(F)V
    .registers 4

    iput p1, p0, Landroid/support/v4/widget/ac;->c:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/ac;->d:J

    iget-object v0, p0, Landroid/support/v4/widget/ac;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/as;->c(Landroid/view/View;)V

    return-void
.end method

.method final a(Landroid/graphics/Canvas;FFIF)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/ac;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Landroid/support/v4/widget/ac;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/ac;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method final a(Landroid/graphics/Canvas;II)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/widget/ac;->m:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/ac;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/ac;->c:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/ac;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
