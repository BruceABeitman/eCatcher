.class public final Lcom/instagram/common/ui/widget/imageview/c;
.super Landroid/graphics/drawable/Drawable;
.source "IgColorDrawable.java"


# instance fields
.field private a:Lcom/instagram/common/ui/widget/imageview/d;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(Lcom/instagram/common/ui/widget/imageview/d;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(Lcom/instagram/common/ui/widget/imageview/d;)V

    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/c;->a(I)V

    return-void
.end method

.method private constructor <init>(Lcom/instagram/common/ui/widget/imageview/d;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->b:Landroid/graphics/Paint;

    new-instance v0, Lcom/instagram/common/ui/widget/imageview/d;

    invoke-direct {v0, p1}, Lcom/instagram/common/ui/widget/imageview/d;-><init>(Lcom/instagram/common/ui/widget/imageview/d;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/ui/widget/imageview/d;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(Lcom/instagram/common/ui/widget/imageview/d;)V

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    if-eq v0, p1, :cond_17

    :cond_c
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/c;->invalidateSelf()V

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iput p1, v1, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    iput p1, v0, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    :cond_17
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v1, v1, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v1, v1, Lcom/instagram/common/ui/widget/imageview/d;->c:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/c;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/instagram/common/ui/widget/imageview/d;->c:I

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    return-object v0
.end method

.method public final getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_10

    const/4 v0, -0x3

    :goto_a
    return v0

    :sswitch_b
    const/4 v0, -0x1

    goto :goto_a

    :sswitch_d
    const/4 v0, -0x2

    goto :goto_a

    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_d
        0xff -> :sswitch_b
    .end sparse-switch
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/facebook/bb;->IgColorDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v1, v1, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    sget v2, Lcom/facebook/bb;->IgColorDrawable_color:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget-object v3, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iput v1, v3, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    iput v1, v2, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final setAlpha(I)V
    .registers 6

    shr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    ushr-int/lit8 v0, v0, 0x18

    mul-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v1, v1, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    iget-object v2, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget-object v3, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v3, v3, Lcom/instagram/common/ui/widget/imageview/d;->a:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    iput v0, v2, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/c;->a:Lcom/instagram/common/ui/widget/imageview/d;

    iget v0, v0, Lcom/instagram/common/ui/widget/imageview/d;->b:I

    if-eq v1, v0, :cond_28

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/c;->invalidateSelf()V

    :cond_28
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
