.class public Lcom/bbm/ui/activities/CarrierBillingActivity;
.super Landroid/app/Activity;
.source "CarrierBillingActivity.java"


# static fields
.field static b:Z

.field private static i:Landroid/widget/ProgressBar;

.field private static j:Z


# instance fields
.field a:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Lcom/bbm/l/d/a/c;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/CarrierBillingActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/CarrierBillingActivity;Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "ResponseCode"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "BangoTransactionId"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BangoUserId"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/bbm/l/d/a/c;

    if-nez v0, :cond_1e

    move-object v0, v1

    :cond_1e
    iget-object v6, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->c:Ljava/lang/String;

    if-nez v2, :cond_7f

    :goto_22
    invoke-direct {v5, v4, v0, v6, v1}, Lcom/bbm/l/d/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/activities/bm;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/bm;-><init>(Lcom/bbm/ui/activities/CarrierBillingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00ee

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/bbm/ui/activities/bn;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/bn;-><init>(Lcom/bbm/ui/activities/CarrierBillingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_8f

    const-string v2, "ResponseCode"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    invoke-virtual {v2}, Lcom/bbm/l/d/a/c;->a()Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0e05e6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, v7}, Lcom/bbm/ui/activities/CarrierBillingActivity;->b(Z)V

    :goto_7c
    sput-boolean v7, Lcom/bbm/ui/activities/CarrierBillingActivity;->b:Z

    return-void

    :cond_7f
    move-object v1, v2

    goto :goto_22

    :cond_81
    const v0, 0x7f0e05e8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->b()V

    goto :goto_7c

    :cond_8f
    const v2, 0x7f0e05e9

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x7f0e0553

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0, v7}, Lcom/bbm/ui/activities/CarrierBillingActivity;->b(Z)V

    goto :goto_7c
.end method

.method public static a(Z)V
    .registers 3

    sget-object v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->i:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    if-eqz p0, :cond_d

    sget-object v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_c
.end method

.method static synthetic a()Z
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->j:Z

    return v0
.end method

.method private b()V
    .registers 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v0, 0x3ea

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    iget-object v2, v2, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    iget-object v2, v2, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    invoke-virtual {v2}, Lcom/bbm/l/d/a/c;->a()Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v0, 0x3e9

    :cond_25
    const-string v2, "bangoResult"

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2c
    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/CarrierBillingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/CarrierBillingActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    if-eqz v1, :cond_10

    const-string v1, "bangoResult"

    iget-object v2, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_10
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->finish()V

    return-void
.end method

.method private b(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_39

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_15

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    if-eqz p1, :cond_3b

    move v0, v2

    :goto_12
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_21

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3d

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_21
    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_3f

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->h:Landroid/view/View;

    if-eqz p1, :cond_41

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_38
    return-void

    :cond_39
    move v0, v1

    goto :goto_6

    :cond_3b
    move v0, v1

    goto :goto_12

    :cond_3d
    move v0, v2

    goto :goto_1e

    :cond_3f
    move v0, v2

    goto :goto_2a

    :cond_41
    move v1, v2

    goto :goto_35
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    sget-boolean v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->j:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->d:Lcom/bbm/l/d/a/c;

    iget-object v0, v0, Lcom/bbm/l/d/a/c;->a:Ljava/lang/String;

    if-nez v0, :cond_1b

    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->finish()V

    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->setContentView(I)V

    sput-boolean v5, Lcom/bbm/ui/activities/CarrierBillingActivity;->b:Z

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->i:Landroid/widget/ProgressBar;

    invoke-static {v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->a(Z)V

    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->h:Landroid/view/View;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/bbm/ui/activities/CarrierBillingActivity;->b(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_78
    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/CarrierBillingActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8d

    const-string v1, "bangoContentID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->c:Ljava/lang/String;

    :cond_8d
    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/bbm/ui/activities/bk;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/bk;-><init>(Lcom/bbm/ui/activities/CarrierBillingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/bbm/ui/activities/bl;

    invoke-direct {v1, p0, p0}, Lcom/bbm/ui/activities/bl;-><init>(Lcom/bbm/ui/activities/CarrierBillingActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_108

    :cond_d5
    const-string v0, ""

    :goto_d7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Locale set for CB request is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz v0, :cond_f8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f8

    const-string v2, "Accept-Language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f8
    iget-object v0, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;

    invoke-static {}, Lcom/bbm/l/d/a/a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/CarrierBillingActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_108
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11f
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12e

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12e
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d7

    :cond_13a
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11f
.end method
