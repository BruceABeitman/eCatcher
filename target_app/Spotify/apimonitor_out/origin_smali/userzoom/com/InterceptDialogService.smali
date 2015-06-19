.class public Luserzoom/com/InterceptDialogService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/WebChromeClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Luserzoom/com/InterceptDialogService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    new-instance v0, Lcom/userzoom/bg;

    invoke-direct {v0}, Lcom/userzoom/bg;-><init>()V

    iput-object v0, p0, Luserzoom/com/InterceptDialogService;->c:Landroid/webkit/WebChromeClient;

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Luserzoom/com/InterceptDialogService;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UZLIB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/userzoom/bi;

    iget-object v2, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    invoke-direct {v1, p0, p0, v2}, Lcom/userzoom/bi;-><init>(Luserzoom/com/InterceptDialogService;Landroid/content/Context;Landroid/webkit/WebView;)V

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/userzoom/bh;

    invoke-direct {v1}, Lcom/userzoom/bh;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, "json"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luserzoom/com/InterceptDialogService;->a:Ljava/lang/String;

    iget-object v0, p0, Luserzoom/com/InterceptDialogService;->b:Landroid/webkit/WebView;

    const-string v1, "https://s.userzoom.com"

    sget-object v2, Lcom/userzoom/ap;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "https://s.userzoom.com"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3
.end method
