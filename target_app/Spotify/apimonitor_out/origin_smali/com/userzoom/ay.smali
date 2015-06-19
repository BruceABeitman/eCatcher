.class public final Lcom/userzoom/ay;
.super Lcom/userzoom/be;


# instance fields
.field final synthetic a:Luserzoom/com/InterceptDialog;


# direct methods
.method public constructor <init>(Luserzoom/com/InterceptDialog;Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    iput-object p1, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-direct {p0, p2, p3}, Lcom/userzoom/be;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public final closeBrowser()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->g(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/userzoom/bd;

    invoke-direct {v1, p0}, Lcom/userzoom/bd;-><init>(Lcom/userzoom/ay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyClient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    iget-object v0, v0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v0, v0, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget-boolean v0, v0, Lcom/userzoom/ax;->a:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v2}, Luserzoom/com/InterceptDialog;->g(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/userzoom/az;

    invoke-direct {v3, p0, v0, v1}, Lcom/userzoom/az;-><init>(Lcom/userzoom/ay;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_39
    invoke-virtual {p0}, Lcom/userzoom/ay;->saveReferrer()V

    goto :goto_4

    :cond_3d
    iget-object v0, p0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-static {}, Lcom/userzoom/ap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/ay;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public final readyMobile()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    iget-object v0, v0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v0, v0, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget-object v0, v0, Lcom/userzoom/ax;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:(function() {window[\'uz_til\'].mobileStart("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", true); })()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/userzoom/ay;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final startSurvey(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Luserzoom/com/a;->c(Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    iget-object v0, v0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v0, v0, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-boolean v0, v0, Lcom/userzoom/ax;->b:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    invoke-virtual {v0}, Luserzoom/com/a;->b()V

    :cond_1d
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    iget-object v0, v0, Luserzoom/com/a;->d:Lcom/userzoom/ar;

    iget-object v0, v0, Lcom/userzoom/ar;->a:Lcom/userzoom/ax;

    iget v0, v0, Lcom/userzoom/ax;->d:I

    if-lez v0, :cond_42

    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->g(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/userzoom/bc;

    invoke-direct {v1, p0, p1}, Lcom/userzoom/bc;-><init>(Lcom/userzoom/ay;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_42
    const/4 v0, 0x0

    goto :goto_31

    :cond_44
    iget-object v0, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/userzoom/n;->h()V

    goto :goto_11
.end method

.method public final updateInterceptSize(II)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->g(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/userzoom/bb;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/userzoom/bb;-><init>(Lcom/userzoom/ay;ILandroid/util/DisplayMetrics;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method
