.class public final Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Z

.field private final r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    :try_start_d
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "passback"

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "Passback received"

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v2}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V

    move v0, v1

    goto :goto_c

    :cond_2a
    iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/net/URI;

    iget-object v4, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v2, v3}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Passback received"

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v2}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V
    :try_end_5f
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_5f} :catch_61

    move v0, v1

    goto :goto_c

    :catch_61
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    :try_start_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_19} :catch_1b

    move-result-object p1

    goto :goto_6

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->startCheckingForAd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    :cond_25
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "shouldOverrideUrlLoading: received passback url"

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
