.class public Lcom/pinguo/camera360/camera/activity/OptionsAbout;
.super Lcom/pinguo/camera360/base/BaseRotateActivity;
.source "OptionsAbout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private mOptionsAboutTitle:Lcom/pinguo/camera360/ui/TitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;-><init>()V

    return-void
.end method

.method private initListener()V
    .registers 2

    const v0, 0x7f0a048a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 6

    const v3, 0x7f0a0483

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mOptionsAboutTitle:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mOptionsAboutTitle:Lcom/pinguo/camera360/ui/TitleView;

    const v4, 0x7f0802d8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mOptionsAboutTitle:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v3, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v3, 0x7f0a0484

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    :cond_8
    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    const v1, 0x7f0a0487

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingAboutSet(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/login/PGLoginAuthorize;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_1a
    const v1, 0x7f0a0486

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingAboutSet(I)V

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    invoke-direct {v0, p0, v3}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->show()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->getDialog()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v1, v3, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_8

    :pswitch_3e
    const v1, 0x7f0a0488

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingAboutSet(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_4f
    const v1, 0x7f0a0489

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Setting;->settingAboutSet(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/camera/activity/OptionsThanks;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_data_60
    .packed-switch 0x7f0a0486
        :pswitch_1a
        :pswitch_9
        :pswitch_3e
        :pswitch_4f
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300cf

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->initView()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->initListener()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseRotateActivity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsAbout;->finish()V

    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 3

    return-void
.end method
