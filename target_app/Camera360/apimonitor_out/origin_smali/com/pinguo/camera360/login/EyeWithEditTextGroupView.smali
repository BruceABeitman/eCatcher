.class public Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;
.super Landroid/view/ViewGroup;
.source "EyeWithEditTextGroupView.java"


# static fields
.field public static final EYE_CLICK_RANGE_MODIFY:I = 0xa

.field public static final EYE_PADDING_RIGHT:I = 0xa


# instance fields
.field private mEditTextView:Lcom/pinguo/camera360/login/EditTextWithLine;

.field private mEyeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/login/EditTextWithLine;

    iput-object v0, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEditTextView:Lcom/pinguo/camera360/login/EditTextWithLine;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEyeImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    const/4 v7, 0x0

    if-eqz p1, :cond_33

    iget-object v4, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEditTextView:Lcom/pinguo/camera360/login/EditTextWithLine;

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v4, v7, v7, v5, v6}, Lcom/pinguo/camera360/login/EditTextWithLine;->layout(IIII)V

    iget-object v4, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEyeImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEyeImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v4, p4, p2

    sub-int/2addr v4, v1

    add-int/lit8 v2, v4, -0xa

    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    iget-object v4, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEyeImageView:Landroid/widget/ImageView;

    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v6, v3, -0xa

    add-int v7, v2, v1

    add-int/lit8 v7, v7, 0xa

    add-int v8, v3, v0

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEditTextView:Lcom/pinguo/camera360/login/EditTextWithLine;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/login/EditTextWithLine;->measure(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEyeImageView:Landroid/widget/ImageView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->mEditTextView:Lcom/pinguo/camera360/login/EditTextWithLine;

    invoke-virtual {v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/login/EyeWithEditTextGroupView;->setMeasuredDimension(II)V

    return-void
.end method
