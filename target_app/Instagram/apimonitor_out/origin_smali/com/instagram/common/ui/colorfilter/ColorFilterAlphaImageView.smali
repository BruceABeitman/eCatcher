.class public Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;
.super Landroid/widget/ImageView;
.source "ColorFilterAlphaImageView.java"


# instance fields
.field private a:Landroid/graphics/ColorFilter;

.field private b:Landroid/graphics/ColorFilter;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0xff

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->c:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->d:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/16 v0, 0xff

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->c:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->d:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->e:I

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->c:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->d:I

    iput v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->e:I

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_22
    iget-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->b:Landroid/graphics/ColorFilter;

    iget v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->d:I

    :goto_26
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    :cond_2d
    iget-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a:Landroid/graphics/ColorFilter;

    iget v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->c:I

    goto :goto_26

    :cond_32
    iget v0, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->e:I

    goto :goto_26
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/16 v2, 0xff

    sget-object v0, Lcom/facebook/bb;->ColorFilterAwareImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_normal:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a:Landroid/graphics/ColorFilter;

    :cond_1d
    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_normal_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_normal_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->c:I

    :cond_2d
    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_active:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_68

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_active:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->b:Landroid/graphics/ColorFilter;

    :goto_41
    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_active_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_51

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_active_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->d:I

    :cond_51
    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_disabled_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_61

    sget v1, Lcom/facebook/bb;->ColorFilterAwareImageView_disabled_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->e:I

    :cond_61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a()V

    return-void

    :cond_68
    iget-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a:Landroid/graphics/ColorFilter;

    iput-object v1, p0, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->b:Landroid/graphics/ColorFilter;

    goto :goto_41
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/instagram/common/ui/colorfilter/ColorFilterAlphaImageView;->a()V

    return-void
.end method
