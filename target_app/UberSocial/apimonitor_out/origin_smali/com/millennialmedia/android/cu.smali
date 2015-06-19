.class abstract Lcom/millennialmedia/android/cu;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "MMWebViewClient"


# instance fields
.field a:Lcom/millennialmedia/android/cv;

.field b:Lcom/millennialmedia/android/az;

.field c:Z

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cv;Lcom/millennialmedia/android/az;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cu;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/millennialmedia/android/cu;->a:Lcom/millennialmedia/android/cv;

    iput-object p2, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/millennialmedia/android/cq;)V
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/cq;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/cq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/millennialmedia/android/cu;->a:Lcom/millennialmedia/android/cv;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/cv;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->w()V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cu;->a(Lcom/millennialmedia/android/cq;)V

    const-string v1, "MMWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "url is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    const/4 v3, 0x0

    const-string v0, "MMWebViewClient"

    const-string v1, "onPageStarted: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cu;->a:Lcom/millennialmedia/android/cv;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/cv;->b(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/cq;

    const-string v1, "loading"

    iput-object v1, v0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/millennialmedia/android/cq;->k:Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "MMWebViewClient"

    const-string v1, "Error: %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/android/cq;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/android/cq;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "MMWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@@@@@@@SHOULDOVERRIDELOADING@@@@@@@@@@@@@ Url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v0, "MMWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running JS bridge command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/ca;

    check-cast p1, Lcom/millennialmedia/android/cq;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/ca;-><init>(Lcom/millennialmedia/android/cq;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/ca;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/cu;->c:Z

    iget-object v2, p0, Lcom/millennialmedia/android/cu;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    :goto_65
    return v0

    :cond_66
    iget-object v3, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    invoke-virtual {v3}, Lcom/millennialmedia/android/az;->a()Z

    move-result v3

    if-eqz v3, :cond_70

    move v0, v2

    goto :goto_65

    :cond_70
    iget-object v2, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    iput-object p2, v2, Lcom/millennialmedia/android/az;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/millennialmedia/android/az;->b:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    iget-wide v3, v0, Lcom/millennialmedia/android/cq;->e:J

    iput-wide v3, v2, Lcom/millennialmedia/android/az;->e:J

    iget-object v0, p0, Lcom/millennialmedia/android/cu;->b:Lcom/millennialmedia/android/az;

    invoke-static {v0}, Lcom/millennialmedia/android/ax;->a(Lcom/millennialmedia/android/az;)V

    :cond_8c
    move v0, v1

    goto :goto_65
.end method
