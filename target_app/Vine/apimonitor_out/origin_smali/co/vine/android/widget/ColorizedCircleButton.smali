.class public Lco/vine/android/widget/ColorizedCircleButton;
.super Landroid/widget/ImageView;
.source "ColorizedCircleButton.java"


# static fields
.field public static final PRESSED:I = 0x2

.field public static final UNPRESSED:I = 0x1


# instance fields
.field private mColor:I

.field private final mGray:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/ColorizedCircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/ColorizedCircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lco/vine/android/widget/ColorizedCircleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mGray:I

    iget v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mGray:I

    iput v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mColor:I

    invoke-virtual {p0}, Lco/vine/android/widget/ColorizedCircleButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    invoke-virtual {p0}, Lco/vine/android/widget/ColorizedCircleButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lco/vine/android/widget/ColorizedCircleButton;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    :cond_b
    iget-object v0, p0, Lco/vine/android/widget/ColorizedCircleButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_14
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_18
    iget-object v0, p0, Lco/vine/android/widget/ColorizedCircleButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mGray:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_14
.end method

.method public setColor(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mColor:I

    invoke-virtual {p0}, Lco/vine/android/widget/ColorizedCircleButton;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x2

    :goto_3
    invoke-virtual {p0, v0}, Lco/vine/android/widget/ColorizedCircleButton;->setState(I)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_a
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lco/vine/android/widget/ColorizedCircleButton;->mState:I

    return-void
.end method
