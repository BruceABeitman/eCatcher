.class public Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
.super Landroid/app/Activity;
.source "CameraModeDetailActivity.java"


# static fields
.field private static final REQUEST_CODE_SONY_GUIDE:I = 0x3e8


# instance fields
.field private mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

.field private mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

.field private mIconView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

.field private mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

.field private mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

.field private mInstalledText:Landroid/widget/TextView;

.field private mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

.field private mIsPlaying:Z

.field private mNameText:Landroid/widget/TextView;

.field private mPlaySoundBtn:Landroid/widget/ImageView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

.field private mShortPicFlag:Z

.field private mSoundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;

.field private mp3Lock:[B

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mp3Lock:[B

    iput-boolean v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    new-instance v0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$1;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mShortPicFlag:Z

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mShortPicFlag:Z

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->playMp3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->stopMp3()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->showDetailPopupWindow()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setBackResult()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    return-object v0
.end method

.method private findViews()V
    .registers 2

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/BannerView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/ProgressButton;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    const v0, 0x7f0a0242

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIconView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mNameText:Landroid/widget/TextView;

    const v0, 0x7f0a0245

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;

    const v0, 0x7f0a0246

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSummaryText:Landroid/widget/TextView;

    const v0, 0x7f0a0554

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    return-void
.end method

.method private initViews()V
    .registers 6

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    const v1, 0xe8e8e8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$2;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIconView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v1, 0x7f0202c2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIconView:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v3, :cond_f8

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3a
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSummaryText:Landroid/widget/TextView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$3;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v1, 0x7f08025c

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$4;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    invoke-direct {v0, v3}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/BannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$5;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-nez v0, :cond_101

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v3, :cond_124

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V

    :goto_d1
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->setListener(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f7
    return-void

    :cond_f8
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstalledText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3a

    :cond_101
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v2, :cond_117

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V

    goto/16 :goto_8f

    :cond_117
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v3, :cond_8f

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    goto/16 :goto_8f

    :cond_124
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V

    goto :goto_d1
.end method

.method private playMp3(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020425

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mp3Lock:[B

    monitor-enter v3

    :try_start_1e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_4a

    :try_start_37
    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_43} :catch_45

    :cond_43
    :goto_43
    :try_start_43
    monitor-exit v3

    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43

    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method private setBackResult()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "name_product_id"

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private showDetailPopupWindow()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v4, :cond_69

    const v4, 0x7f03006a

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$9;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$9;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a024c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a024d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a024b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/Product;->detail:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$10;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$10;-><init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v3, v6, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const v5, 0x7f09003c

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_69
    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mNameText:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "name_product_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "name_product_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivityFromBanner(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    if-eqz v1, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "name_product_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v2, "startActivityFromBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can not find the product from guid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    if-eqz v2, :cond_3f

    move-object v2, p0

    check-cast v2, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getStoreType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    :cond_3f
    invoke-static {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startRefreshedCameraStore(Landroid/content/Context;)V

    goto :goto_1a
.end method

.method private stopMp3()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iput-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mp3Lock:[B

    monitor-enter v1

    :try_start_13
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    :cond_30
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->player:Landroid/media/MediaPlayer;

    :cond_38
    monitor-exit v1

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1a

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1a

    const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "bundle_key_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->finish()V

    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setBackResult()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name_product_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->finish()V

    :goto_1f
    return-void

    :cond_20
    const v1, 0x7f030069

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->findViews()V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->initViews()V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeModeMoreLayShow(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method protected onDestroy()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :cond_16
    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->stopMp3()V

    :cond_a
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
