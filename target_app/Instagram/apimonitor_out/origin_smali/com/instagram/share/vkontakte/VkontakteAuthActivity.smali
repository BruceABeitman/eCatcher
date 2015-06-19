.class public Lcom/instagram/share/vkontakte/VkontakteAuthActivity;
.super Lcom/instagram/base/activity/d;
.source "VkontakteAuthActivity.java"


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/v4/app/Fragment;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->setResult(ILandroid/content/Intent;)V

    :goto_b
    invoke-virtual {p0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->finish()V

    return-void

    :cond_f
    new-instance v1, Lcom/instagram/share/vkontakte/a;

    invoke-direct {v1, p1}, Lcom/instagram/share/vkontakte/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/instagram/share/vkontakte/a;->c()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_b
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "access_token="

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "access_token="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_3

    :catch_2d
    move-exception v1

    iget-object v1, p0, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to pull access_token from URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/aw;->vkontakte_auth:I

    invoke-virtual {p0, v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->setContentView(I)V

    sget v0, Lcom/facebook/av;->webView:I

    invoke-virtual {p0, v0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lcom/instagram/share/vkontakte/d;

    invoke-direct {v1, p0}, Lcom/instagram/share/vkontakte/d;-><init>(Lcom/instagram/share/vkontakte/VkontakteAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://oauth.vk.com/authorize?client_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/share/vkontakte/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&scope=wall,photos,offline&redirect_uri=http://api.vkontakte.ru/blank.html&display=wap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&response_type=token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
