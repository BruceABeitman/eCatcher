.class public Lcom/pinguo/camera360/camera/view/TapCaptureView;
.super Lcom/pinguo/camera360/base/BaseView;
.source "TapCaptureView.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private bottomHeight:I

.field private displayFrame:Z

.field private haveTouchScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

.field private mTouchView:Landroid/view/View;

.field private maxBottom:I

.field private minTop:I

.field private pc:F

.field private pfc:F

.field private ph:I

.field private previewFrame:I

.field private previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

.field private previewRect:Landroid/graphics/Rect;

.field private previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private pw:I

.field private sc:F

.field private scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private sh:I

.field private sw:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/16 v4, -0x64

    const/high16 v3, -0x3d38

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    iput v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/16 v4, -0x64

    const/high16 v3, -0x3d38

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    iput v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    iput v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/TapCaptureView;)Landroid/view/GestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private getFrameRectPrivate()Landroid/graphics/Rect;
    .registers 13

    const/high16 v11, 0x4000

    const/high16 v10, 0x3f80

    const/high16 v9, 0x3f00

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->isParamLegal()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    :goto_d
    return-object v6

    :cond_e
    iget v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_d

    iget v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    invoke-static {v7, v8}, Lcom/pinguo/camera360/photoedit/PGGPUUtils;->isEqual(FF)Z

    move-result v7

    if-nez v7, :cond_d

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    iget v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_47

    const/4 v1, 0x0

    iget v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    int-to-float v6, v6

    iget v7, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v6, v9

    float-to-int v5, v6

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    sub-int v0, v6, v5

    invoke-direct {p0, v1, v3, v5, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getOnlyPreviewFrameRect(IIII)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_d

    :cond_47
    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    div-float v4, v10, v6

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    div-float v2, v10, v6

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    int-to-float v6, v6

    sub-float v7, v4, v2

    mul-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v6, v9

    float-to-int v1, v6

    iget v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    sub-int v3, v6, v1

    const/4 v5, 0x0

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    invoke-direct {p0, v1, v3, v5, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getOnlyPreviewFrameRect(IIII)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_d
.end method

.method private getOnlyPreviewFrameRect(IIII)Landroid/graphics/Rect;
    .registers 16

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    iget v9, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_27

    move v3, p1

    move v6, p2

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    int-to-float v8, v8

    iget v9, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    iget v10, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v2, v8

    add-int v7, p3, v2

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    add-int/2addr v8, p3

    sub-int v0, v8, v2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v7, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_26
    return-object v8

    :cond_27
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    div-float v4, v8, v9

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    div-float v5, v8, v9

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    int-to-float v8, v8

    sub-float v9, v4, v5

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v1, v8

    add-int v3, p1, v1

    iget v8, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    add-int/2addr v8, p1

    sub-int v6, v8, v1

    move v7, p3

    move v0, p4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v7, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_26
.end method

.method private getOnlyTouchShootTapRect()Landroid/graphics/Rect;
    .registers 8

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    if-nez v5, :cond_4c

    :cond_8
    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v6, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v5, v6}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    add-int v3, v1, v5

    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    if-ge v4, v5, :cond_3c

    iget v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    :cond_3c
    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    if-le v5, v4, :cond_46

    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    if-le v0, v5, :cond_46

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    :cond_46
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_4b
    return-object v5

    :cond_4c
    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    if-ge v4, v5, :cond_62

    iget v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    :cond_62
    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    if-le v5, v4, :cond_6c

    iget v5, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    if-le v0, v5, :cond_6c

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    :cond_6c
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4b
.end method

.method private static getPreviewScale(I)F
    .registers 2

    const/high16 v0, -0x3d38

    packed-switch p0, :pswitch_data_14

    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    const v0, 0x3fe38e39

    goto :goto_5

    :pswitch_a
    const v0, 0x3faaaaab

    goto :goto_5

    :pswitch_e
    const/high16 v0, 0x3fc0

    goto :goto_5

    :pswitch_11
    const/high16 v0, 0x3f80

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private isParamLegal()Z
    .registers 4

    const/16 v2, -0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->minTop:I

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private updateView()V
    .registers 4

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->isParamLegal()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setVisibility(I)V

    :cond_12
    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    if-nez v0, :cond_1e

    :cond_1a
    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    if-eqz v0, :cond_2f

    :cond_1e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setTouchShotOn(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setPreviewFrame(IZ)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setVisibility(I)V

    goto :goto_2e
.end method


# virtual methods
.method public diaplayPreviewFrame(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getFrameRectPrivate()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->updateView()V

    return-void
.end method

.method public getFrameRect()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTouchTapRect()Landroid/graphics/Rect;
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->isParamLegal()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getOnlyTouchShootTapRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_7
.end method

.method public getTouchView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    return-object v0
.end method

.method public getTouchViewLeftPoint()Landroid/graphics/Point;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-nez v2, :cond_f

    :cond_9
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_e
    return-object v2

    :cond_f
    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_31

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :cond_31
    iget v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_47

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    :cond_47
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_e
.end method

.method public haveTouchScreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onFinishInflate()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseView;->onFinishInflate()V

    const v1, 0x7f0a03e8

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setPreviewRectInterface(Lcom/pinguo/camera360/photoedit/PreviewRectInterface;)V

    const v1, 0x7f0a03e6

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIsNeedShowTouchShotTips()Z

    move-result v0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setHaveText(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setTouchShotOn(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setPreviewRectInterface(Lcom/pinguo/camera360/photoedit/PreviewRectInterface;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    iget-boolean v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->displayFrame:Z

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setPreviewFrame(IZ)V

    const v1, 0x7f0a03e7

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTouchView:Landroid/view/View;

    new-instance v2, Lcom/pinguo/camera360/camera/view/TapCaptureView$1;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView$1;-><init>(Lcom/pinguo/camera360/camera/view/TapCaptureView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/base/BaseView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_5e

    :cond_9
    if-eqz p1, :cond_12

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Lcom/pinguo/lib/UIContants;->changeScreen(II)V

    :cond_12
    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->isValidSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    :cond_4b
    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    sub-int v0, p5, p3

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->updateView()V

    :cond_5e
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_5
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_6

    :cond_5
    :goto_5
    return v3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getTouchTapRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_5

    :cond_1b
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_5

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_5

    iget-boolean v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->isHaveText()Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mTapCaptureTipView:Lcom/pinguo/camera360/camera/view/TapCaptureTipView;

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setHaveText(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNeedShowTouchShotTips(Z)V

    :cond_4f
    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_5
.end method

.method public setAllSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->screenSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->scaledPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->bottomHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->maxBottom:I

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->isParamLegal()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    if-ge v0, v1, :cond_33

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    :cond_33
    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pw:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->ph:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pc:F

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    if-ge v0, v1, :cond_5a

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    :cond_5a
    iget v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sw:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sh:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->sc:F

    :cond_63
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->updateView()V

    return-void
.end method

.method public setGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    return-void
.end method

.method public setHaveTouchScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->updateView()V

    return-void
.end method

.method public setPreviewFrame(I)V
    .registers 4

    iput p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrame:I

    invoke-static {p1}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getPreviewScale(I)F

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->pfc:F

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->getFrameRectPrivate()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureView;->previewFrameView:Lcom/pinguo/camera360/camera/view/PreviewFrameView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PreviewFrameView;->setVisibility(I)V

    :cond_19
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->updateView()V

    return-void
.end method
