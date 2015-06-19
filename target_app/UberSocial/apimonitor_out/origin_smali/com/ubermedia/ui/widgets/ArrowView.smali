.class public Lcom/ubermedia/ui/widgets/ArrowView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ubermedia/ui/widgets/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ubermedia/ui/widgets/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ubermedia/ui/widgets/ArrowView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    if-eqz p1, :cond_18

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_18

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    if-nez v2, :cond_15

    const-string v2, "direction"

    invoke-direct {p0, p1, v0, v2}, Lcom/ubermedia/ui/widgets/ArrowView;->a(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/16 v3, 0xff

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v2, 0xa0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_73
    iget-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ubermedia/ui/widgets/ArrowView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6c

    :cond_b5
    iget-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/ArrowView;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_6c
.end method
