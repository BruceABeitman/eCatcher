.class public Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;
.super Landroid/view/ViewGroup;
.source "SwitchIndicatorViewGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchIndicatorViewGroup"


# instance fields
.field delta:F

.field iDestHeight:I

.field iDestWidth:I

.field private mIndicatorImage:Landroid/widget/ImageView;

.field private mModeName:Landroid/widget/TextView;

.field private mNameBarBgId:I

.field private mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

.field private mSpecHeight:I

.field private mSpecWidth:I

.field rDestHeight:I

.field rDestWidth:I

.field radio:F

.field tDestHeight:I

.field tDestWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    const v0, 0x7f0200c0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mNameBarBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    const v0, 0x7f0200c0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mNameBarBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    const v0, 0x7f0200c0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mNameBarBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecWidth:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v4, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_76

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Lcom/pinguo/camera360/camera/view/SwitchIconView;

    invoke-direct {v4, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initImgSize(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    invoke-virtual {p0, v4, v2}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iget v5, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mNameBarBgId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x4150

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f080336

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->setContent(I)V

    return-void

    nop

    :array_76
    .array-data 0x4
        0xd0t 0x0t 0x1t 0x1t
        0xd4t 0x0t 0x1t 0x1t
        0xf4t 0x0t 0x1t 0x1t
        0xf5t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private setContent(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->requestLayout()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 24

    const/4 v6, 0x0

    move/from16 v8, p3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    add-int v7, v6, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    add-int v5, v8, v13

    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    float-to-int v2, v13

    move/from16 v0, p3

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v4, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    add-int v3, v2, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    add-int v1, v4, v13

    int-to-float v13, v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    add-float/2addr v13, v14

    float-to-int v10, v13

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    add-int v11, v10, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    add-int v9, v12, v13

    const-string/jumbo v13, "SwitchIndicatorViewGroup"

    const-string/jumbo v14, "%n[%d, %d, %d, %d]%n[%d, %d, %d, %d]%n[%d, %d, %d, %d]"

    const/16 v15, 0xc

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    invoke-virtual {v13, v6, v8, v7, v5}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v2, v4, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v12, v11, v9}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 18

    const/16 v4, 0x64

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v5, v9, :cond_b5

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    :goto_10
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->getChildCount()I

    move-result v3

    const/4 v7, 0x0

    :goto_15
    if-lt v7, v3, :cond_c5

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    float-to-double v9, v9

    const/high16 v11, 0x4080

    iget v12, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->radio:F

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    iget v13, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000

    div-double/2addr v11, v13

    sub-double/2addr v9, v11

    double-to-float v9, v9

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    const-string/jumbo v9, "SwitchIndicatorViewGroup"

    const-string/jumbo v10, "[%d, %d]%f"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestHeight:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget v13, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->tDestWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->delta:F

    add-float/2addr v9, v10

    const/high16 v10, 0x41a0

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iget v11, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestHeight:I

    invoke-virtual {v9, v10, v11}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->measure(II)V

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mIndicatorImage:Landroid/widget/ImageView;

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    iget v11, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->measure(II)V

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->rDestWidth:I

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->iDestWidth:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecWidth:I

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecWidth:I

    iget v10, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    invoke-virtual {p0, v9, v10}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_b5
    const/high16 v9, -0x8000

    if-ne v5, v9, :cond_c1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    goto/16 :goto_10

    :cond_c1
    iput v4, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mSpecHeight:I

    goto/16 :goto_10

    :cond_c5
    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v9, v0, Landroid/widget/TextView;

    if-nez v9, :cond_d1

    :goto_cd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :cond_d1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_cd
.end method

.method public rotateTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mRotateImage:Lcom/pinguo/camera360/camera/view/SwitchIconView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->rotateTo(I)V

    :cond_9
    return-void
.end method

.method public setContentStr(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->requestLayout()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIndicatorViewGroup;->invalidate()V

    return-void
.end method
