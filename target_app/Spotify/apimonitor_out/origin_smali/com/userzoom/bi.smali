.class public final Lcom/userzoom/bi;
.super Lcom/userzoom/be;


# instance fields
.field final synthetic a:Luserzoom/com/InterceptDialogService;


# direct methods
.method public constructor <init>(Luserzoom/com/InterceptDialogService;Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    iput-object p1, p0, Lcom/userzoom/bi;->a:Luserzoom/com/InterceptDialogService;

    invoke-direct {p0, p2, p3}, Lcom/userzoom/be;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public final closeBrowser()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "InterceptDialogService"

    const-string v1, "closeBrowser!"

    invoke-static {v0, v1}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/userzoom/bi;->a:Luserzoom/com/InterceptDialogService;

    invoke-virtual {v0}, Luserzoom/com/InterceptDialogService;->stopSelf()V

    return-void
.end method

.method public final notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "InterceptDialogService"

    const-string v1, "notifyClient!"

    invoke-static {v0, v1}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/userzoom/bi;->b:Landroid/content/Context;

    const-class v2, Luserzoom/com/InterceptDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "MY_URL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/userzoom/bi;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/userzoom/bj;

    invoke-direct {v1, p0}, Lcom/userzoom/bj;-><init>(Lcom/userzoom/bi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/userzoom/bi;->a:Luserzoom/com/InterceptDialogService;

    invoke-virtual {v0}, Luserzoom/com/InterceptDialogService;->stopSelf()V

    goto :goto_4
.end method

.method public final readyMobile()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/userzoom/bk;

    invoke-direct {v1, p0}, Lcom/userzoom/bk;-><init>(Lcom/userzoom/bi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateInterceptSize(II)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
