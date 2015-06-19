.class public Lco/vine/android/widget/ColorPickerCircle;
.super Landroid/widget/ImageView;
.source "ColorPickerCircle.java"


# instance fields
.field private mIndex:I

.field private mSelected:Z

.field private mWhiteCircle:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ColorPickerCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/ColorPickerCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lco/vine/android/widget/ColorPickerCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lco/vine/android/R$styleable;->ColorPickerCircle:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/widget/ColorPickerCircle;->mWhiteCircle:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .registers 2

    iget v0, p0, Lco/vine/android/widget/ColorPickerCircle;->mIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lco/vine/android/widget/ColorPickerCircle;->mSelected:Z

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lco/vine/android/widget/ColorPickerCircle;->getWidth()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/widget/ColorPickerCircle;->mWhiteCircle:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x4

    div-int/lit8 v3, v0, 0x4

    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x3

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lco/vine/android/widget/ColorPickerCircle;->mWhiteCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_21
    return-void
.end method

.method public setIndex(I)V
    .registers 5

    iput p1, p0, Lco/vine/android/widget/ColorPickerCircle;->mIndex:I

    invoke-virtual {p0}, Lco/vine/android/widget/ColorPickerCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lco/vine/android/Settings;->PROFILE_BACKGROUND_COLORS:[I

    aget v1, v1, p1

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p0, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lco/vine/android/widget/ColorPickerCircle;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iput-boolean p1, p0, Lco/vine/android/widget/ColorPickerCircle;->mSelected:Z

    invoke-virtual {p0}, Lco/vine/android/widget/ColorPickerCircle;->invalidate()V

    return-void
.end method
