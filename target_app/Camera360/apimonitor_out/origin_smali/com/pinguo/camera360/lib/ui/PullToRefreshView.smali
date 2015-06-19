.class public Lcom/pinguo/camera360/lib/ui/PullToRefreshView;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnFooterRefreshListener;,
        Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnHeaderRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_DOWN_STATE:I = 0x1

.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final PULL_UP_STATE:I = 0x0

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshView"


# instance fields
.field private mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mFooterImageView:Landroid/widget/ImageView;

.field private mFooterProgressBar:Landroid/widget/ProgressBar;

.field private mFooterState:I

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mFooterViewHeight:I

.field private mHeaderImageView:Landroid/widget/ImageView;

.field private mHeaderProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderState:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUpdateTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mLastUpdateTime:Ljava/lang/String;

.field private mLock:Z

.field private mOnFooterRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnFooterRefreshListener;

.field private mOnHeaderRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnHeaderRefreshListener;

.field private mOrientation:I

.field private mPullState:I

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOrientation:I

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOrientation:I

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->init()V

    return-void
.end method

.method private addFooterView()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f0a056e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f0a056f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f0a056d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->measureView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    const-string/jumbo v1, "PullTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init mFooterViewHeight = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addHeaderView()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0a0556

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0a0558

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0a0570

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0a0557

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->measureView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    const-string/jumbo v1, "PullTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init mHeaderViewHeight = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private changingHeaderViewTopMargin(I)I
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    if-lez p1, :cond_25

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    if-nez v2, :cond_25

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    if-gt v2, v3, :cond_25

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_24
    return v2

    :cond_25
    if-gez p1, :cond_39

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    if-lt v2, v3, :cond_39

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_24

    :cond_39
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->invalidate()V

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_24
.end method

.method private footerPrepareToRefresh(I)V
    .registers 7

    const/4 v4, 0x3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_2b

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterState:I

    if-eq v1, v4, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "pull_to_refresh_footer_release_label"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterState:I

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2a

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "pull_to_refresh_footer_pull_label"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterState:I

    goto :goto_2a
.end method

.method private footerRefreshing()V
    .registers 4

    const/4 v1, 0x4

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterState:I

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int v0, v1, v2

    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "pull_to_refresh_footer_refreshing_label"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOnFooterRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOnFooterRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnFooterRefreshListener;->onFooterRefresh(Lcom/pinguo/camera360/lib/ui/PullToRefreshView;)V

    :cond_36
    return-void
.end method

.method private getHeaderTopMargin()I
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return v1
.end method

.method private headerPrepareToRefresh(I)V
    .registers 6

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    if-ltz v0, :cond_28

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderState:I

    if-eq v1, v3, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "pull_to_refresh_release_label"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iput v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderState:I

    :cond_27
    :goto_27
    return-void

    :cond_28
    if-gez v0, :cond_27

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    if-le v0, v1, :cond_27

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "pull_to_refresh_pull_label"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderState:I

    goto :goto_27
.end method

.method private headerRefreshing()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderState:I

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "pull_to_refresh_refreshing_label"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnHeaderRefreshListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnHeaderRefreshListener;

    invoke-interface {v0, p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView$OnHeaderRefreshListener;->onHeaderRefresh(Lcom/pinguo/camera360/lib/ui/PullToRefreshView;)V

    :cond_2f
    return-void
.end method

.method private init()V
    .registers 15

    const-wide/16 v12, 0xfa

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->addHeaderView()V

    return-void
.end method

.method private initContentAdapterView()V
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getChildCount()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_10

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "this layout must contain 3 child views,and AdapterView or ScrollView must in the second position!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_12
    add-int/lit8 v3, v0, -0x1

    if-lt v1, v3, :cond_27

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "must contain a AdapterView or ScrollView in this layout!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_34

    move-object v3, v2

    check-cast v3, Landroid/widget/AdapterView;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    :cond_34
    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_3d

    move-object v3, v2

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_40
    return-void
.end method

.method private isRefreshViewScroll(I)Z
    .registers 8

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderState:I

    if-eq v3, v4, :cond_b

    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterState:I

    if-ne v3, v4, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v3, :cond_18

    const/4 v3, -0x5

    if-le p1, v3, :cond_16

    const/4 v3, 0x5

    if-lt p1, v3, :cond_b

    :cond_16
    if-gtz p1, :cond_18

    :cond_18
    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-lez p1, :cond_30

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_30

    iput v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    move v1, v2

    goto :goto_b

    :cond_30
    if-gez p1, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_b

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    move v1, v2

    goto :goto_b
.end method

.method private measureView(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_e

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_e
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_22

    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1e
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_22
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1e
.end method

.method private setHeaderTopMargin(I)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getMigrationLength(Landroid/view/MotionEvent;)I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOrientation:I

    sparse-switch v1, :sswitch_data_22

    :goto_6
    return v0

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v0, v1

    goto :goto_6

    :sswitch_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    goto :goto_6

    :sswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_6

    :sswitch_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    neg-int v0, v1

    goto :goto_6

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_7
        0x5a -> :sswitch_d
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_1a
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->addFooterView()V

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->initContentAdapterView()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getMigrationLength(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    :cond_b
    :goto_b
    :pswitch_b
    const/4 v2, 0x0

    :goto_c
    return v2

    :pswitch_d
    iput v1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mLastMotionY:I

    goto :goto_b

    :pswitch_10
    iget v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->isRefreshViewScroll(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mLock:Z

    if-eqz v4, :cond_6

    :goto_5
    return v3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getMigrationLength(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    :cond_11
    :goto_11
    :pswitch_11
    const/4 v3, 0x0

    goto :goto_5

    :pswitch_13
    iget v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v2, v4

    iget v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    if-ne v4, v3, :cond_21

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->headerPrepareToRefresh(I)V

    :cond_1e
    :goto_1e
    iput v2, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mLastMotionY:I

    goto :goto_11

    :cond_21
    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_1e

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->footerPrepareToRefresh(I)V

    goto :goto_1e

    :pswitch_29
    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->getHeaderTopMargin()I

    move-result v1

    const-string/jumbo v4, "PullTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " topMargin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    if-ne v4, v3, :cond_60

    if-ltz v1, :cond_59

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->headerRefreshing()V

    goto :goto_11

    :cond_59
    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_11

    :cond_60
    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    iget v5, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_73

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->footerRefreshing()V

    goto :goto_11

    :cond_73
    iget v3, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_11

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_29
        :pswitch_13
        :pswitch_29
    .end packed-switch
.end method

.method public setOrientation(IZ)V
    .registers 3

    iput p1, p0, Lcom/pinguo/camera360/lib/ui/PullToRefreshView;->mOrientation:I

    return-void
.end method
