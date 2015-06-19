.class public Lcom/pinguo/camera360/login/PGLoginAuthorize;
.super Landroid/app/Activity;
.source "PGLoginAuthorize.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PGLoginAuthorize"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 8

    const v5, 0x7f0a00b0

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v2, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v5, 0x7f0a00b2

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0a04f1

    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    iput-object v5, p0, Lcom/pinguo/camera360/login/PGLoginAuthorize;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08018b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "cn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string/jumbo v4, "term_text_cn.html"

    :goto_4a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "file:///android_asset/www/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/pinguo/camera360/login/PGLoginAuthorize;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_60
    const-string/jumbo v5, "tw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    const-string/jumbo v5, "hk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    :cond_72
    const-string/jumbo v4, "term_text_tw.html"

    goto :goto_4a

    :cond_76
    const-string/jumbo v4, "term_text_en.html"

    goto :goto_4a
.end method


# virtual methods
.method public onBackClick()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginAuthorize;->init()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method
