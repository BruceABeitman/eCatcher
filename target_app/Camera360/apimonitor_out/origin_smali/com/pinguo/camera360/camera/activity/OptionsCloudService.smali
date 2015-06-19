.class public Lcom/pinguo/camera360/camera/activity/OptionsCloudService;
.super Landroid/app/Activity;
.source "OptionsCloudService.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mOptionsCloudServiceTitle:Lcom/pinguo/camera360/ui/TitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0300d2

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->setContentView(I)V

    const v4, 0x7f0a04ad

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->mOptionsCloudServiceTitle:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->mOptionsCloudServiceTitle:Lcom/pinguo/camera360/ui/TitleView;

    const v5, 0x7f08018b

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->mOptionsCloudServiceTitle:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v4, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    const-string/jumbo v4, "cn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    const-string/jumbo v3, "term_text_cn.html"

    :goto_54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "file:///android_asset/www/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a04ae

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_71
    const-string/jumbo v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    const-string/jumbo v4, "tw"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    const-string/jumbo v3, "term_text_tw.html"

    goto :goto_54

    :cond_87
    const-string/jumbo v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string/jumbo v4, "hk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string/jumbo v3, "term_text_tw.html"

    goto :goto_54

    :cond_9d
    const-string/jumbo v3, "term_text_en.html"

    goto :goto_54
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/activity/OptionsCloudService;->finish()V

    return-void
.end method
