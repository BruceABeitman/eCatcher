.class public Lcom/pinguo/camera360/camera/view/BigHeadView;
.super Lcom/pinguo/camera360/lib/ui/RotateImageView;
.source "BigHeadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/view/BigHeadView$DatouInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_DENSITY:F = 1.5f


# instance fields
.field private drawDatou:Landroid/graphics/drawable/Drawable;

.field private mDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->mDensity:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->mDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->mDensity:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->mDensity:F

    return-void
.end method


# virtual methods
.method public disableDatou()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setVisibility(I)V

    return-void
.end method

.method public enableDatou()V
    .registers 13

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_58

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020430

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->mDensity:F

    const/high16 v9, 0x3fc0

    div-float v5, v8, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v7, v8

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v3, v8

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/BigHeadView;->getHeight()I

    move-result v8

    sub-int/2addr v8, v3

    shr-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v8, v1, 0x0

    add-int/lit8 v9, v2, 0x0

    add-int v10, v7, v1

    add-int v11, v3, v2

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BigHeadView;->drawDatou:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_58
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/camera/view/BigHeadView;->setVisibility(I)V

    return-void
.end method
