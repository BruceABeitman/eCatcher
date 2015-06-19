.class public Lcom/bbm/ui/BbmWebView;
.super Landroid/webkit/WebView;
.source "BbmWebView.java"


# instance fields
.field private a:Landroid/webkit/WebSettings;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/bbm/ui/BbmWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/bbm/ui/BbmWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/bbm/ui/BbmWebView;->a()V

    return-void
.end method

.method private a()V
    .registers 6

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/bbm/ui/s;

    invoke-direct {v0, p0}, Lcom/bbm/ui/s;-><init>(Lcom/bbm/ui/BbmWebView;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/BbmWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_35

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_35
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    const/16 v0, 0x6e

    invoke-virtual {p0, v0, v3}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v3}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/16 v0, 0x82

    invoke-virtual {p0, v0, v3}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_63

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_63
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, v2}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    const/16 v0, 0x96

    invoke-virtual {p0, v0, v2}, Lcom/bbm/ui/BbmWebView;->setSetting(IZ)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Javascript Interface disabled"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 3

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed access to Settings"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedSchemeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->b:Ljava/util/List;

    return-object v0
.end method

.method public setSetting(IZ)V
    .registers 4

    sparse-switch p1, :sswitch_data_28

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    goto :goto_3

    :sswitch_a
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    goto :goto_3

    :sswitch_10
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_3

    :sswitch_16
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_3

    :sswitch_1c
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    goto :goto_3

    :sswitch_22
    iget-object v0, p0, Lcom/bbm/ui/BbmWebView;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_3

    :sswitch_data_28
    .sparse-switch
        0x64 -> :sswitch_4
        0x6e -> :sswitch_a
        0x78 -> :sswitch_10
        0x82 -> :sswitch_16
        0x8c -> :sswitch_1c
        0x96 -> :sswitch_22
    .end sparse-switch
.end method
