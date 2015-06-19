.class public Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "WelcomeAdsFragment.java"


# static fields
.field private static final MSG_START_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WelcomeAdsFragment"


# instance fields
.field private mAdsImageView:Landroid/widget/ImageView;

.field private mAdsPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPartnerAd:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mPartnerAd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsPath:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->recycleWelcome(Landroid/widget/ImageView;)V

    return-void
.end method

.method private recycleWelcome(Landroid/widget/ImageView;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/camera/event/HideWelcomeFragment;

    invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/HideWelcomeFragment;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "mAdsImagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsPath:Ljava/lang/String;

    const-string/jumbo v1, "mIsShowPartnerAd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mPartnerAd:Z

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onResume()V
    .registers 3

    const-string/jumbo v0, "WelcomeAdsFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->showWelcomeAd()V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V

    return-void
.end method

.method public showWelcomeAd()V
    .registers 11

    iget-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mPartnerAd:Z

    if-eqz v6, :cond_29

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020202

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_14
    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)V

    const-wide/16 v8, 0x5dc

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_29
    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_45

    move v3, v2

    :goto_38
    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsPath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lcom/pinguo/lib/image/BitmapUtils;->scalePicture(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14

    :cond_45
    move v3, v5

    goto :goto_38
.end method
