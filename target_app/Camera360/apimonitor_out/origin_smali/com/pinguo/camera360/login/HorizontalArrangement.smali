.class public Lcom/pinguo/camera360/login/HorizontalArrangement;
.super Landroid/widget/LinearLayout;
.source "HorizontalArrangement.java"


# instance fields
.field private mThridIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/HorizontalArrangement;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 16

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/HorizontalArrangement;->getChildCount()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_1e

    iget v8, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    mul-int v0, v2, v8

    sub-int v8, p4, p2

    sub-int/2addr v8, v0

    add-int/lit8 v9, v2, -0x1

    div-int v3, v8, v9

    sub-int v8, p5, p3

    iget v9, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    const/4 v5, 0x0

    :goto_1c
    if-lt v5, v2, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/HorizontalArrangement;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    mul-int v8, v5, v3

    iget v9, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    mul-int/2addr v9, v5

    add-int v6, v8, v9

    move v7, v4

    iget v8, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/pinguo/camera360/login/HorizontalArrangement;->mThridIconSize:I

    add-int/2addr v9, v7

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c
.end method
