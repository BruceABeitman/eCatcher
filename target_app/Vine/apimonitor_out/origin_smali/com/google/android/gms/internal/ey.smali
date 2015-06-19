.class public Lcom/google/android/gms/internal/ey;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ey$a;
    }
.end annotation


# instance fields
.field private final lA:Landroid/view/WindowManager;

.field private final lq:Ljava/lang/Object;

.field private nD:Lcom/google/android/gms/internal/am;

.field private final nE:Lcom/google/android/gms/internal/ew;

.field private final py:Lcom/google/android/gms/internal/l;

.field private sA:Z

.field private sB:Z

.field private sC:Z

.field private final sx:Lcom/google/android/gms/internal/ez;

.field private final sy:Lcom/google/android/gms/internal/ey$a;

.field private sz:Lcom/google/android/gms/internal/cg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)V
    .registers 12

    const/4 v4, 0x0

    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    iput-object p6, p0, Lcom/google/android/gms/internal/ey;->nE:Lcom/google/android/gms/internal/ew;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->lA:Landroid/view/WindowManager;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ey;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v1, p6, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_70

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/es;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    :cond_4b
    :goto_4b
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ey;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7c

    new-instance v0, Lcom/google/android/gms/internal/fb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/fb;-><init>(Lcom/google/android/gms/internal/ey;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sx:Lcom/google/android/gms/internal/ez;

    :goto_59
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sx:Lcom/google/android/gms/internal/ez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_84

    new-instance v0, Lcom/google/android/gms/internal/fc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/internal/ey;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_6c
    :goto_6c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cb()V

    return-void

    :cond_70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    goto :goto_4b

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ez;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/ez;-><init>(Lcom/google/android/gms/internal/ey;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sx:Lcom/google/android/gms/internal/ez;

    goto :goto_59

    :cond_84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6c

    new-instance v0, Lcom/google/android/gms/internal/fa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fa;-><init>(Lcom/google/android/gms/internal/ey;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_6c
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;
    .registers 13

    new-instance v1, Lcom/google/android/gms/internal/ey$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ey$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ey;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ey;-><init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)V

    return-object v0
.end method

.method private cb()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->md:Z

    if-eqz v0, :cond_29

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1d

    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cc()V

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cd()V

    goto :goto_1b

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_38

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cc()V

    goto :goto_1b

    :cond_38
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cd()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    goto :goto_1b
.end method

.method private cc()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sB:Z

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->d(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sB:Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private cd()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sB:Z

    if-eqz v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->e(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sB:Z

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method protected E(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ey;->loadUrl(Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public Q()Lcom/google/android/gms/internal/am;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey$a;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ey;->sz:Lcom/google/android/gms/internal/cg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/ep;->b(Landroid/webkit/WebView;)V

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sx:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->reset()V

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/am;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/cg;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ey;->sz:Lcom/google/android/gms/internal/cg;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ep;->o(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_8

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ey;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->E(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:AFMA_ReceiveMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->E(Ljava/lang/String;)V

    return-void
.end method

.method public bS()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->ce()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lA:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ep;->m(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x4320

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :try_start_33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "width"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "density"

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rotation"

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "onScreenInfoChanged"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ey;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_5c} :catch_5d

    goto :goto_a

    :catch_5d
    move-exception v0

    const-string v1, "Error occured while obtaining screen information."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public bT()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->nE:Lcom/google/android/gms/internal/ew;

    iget-object v2, v2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bU()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->nE:Lcom/google/android/gms/internal/ew;

    iget-object v2, v2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bV()Lcom/google/android/gms/internal/cg;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sz:Lcom/google/android/gms/internal/cg;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public bW()Lcom/google/android/gms/internal/ez;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sx:Lcom/google/android/gms/internal/ez;

    return-object v0
.end method

.method public bX()Lcom/google/android/gms/internal/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    return-object v0
.end method

.method public bY()Lcom/google/android/gms/internal/ew;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->nE:Lcom/google/android/gms/internal/ew;

    return-object v0
.end method

.method public bZ()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public ca()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey$a;->ca()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sC:Z

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isDestroyed()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ey;->sC:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected onMeasure(II)V
    .registers 12

    const v0, 0x7fffffff

    const/high16 v8, 0x4000

    const/16 v7, 0x8

    const/high16 v6, -0x8000

    iget-object v4, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    if-eqz v1, :cond_1b

    :cond_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    :goto_1a
    return-void

    :cond_1b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_2f

    if-ne v2, v8, :cond_c7

    :cond_2f
    move v2, v3

    :goto_30
    if-eq v5, v6, :cond_34

    if-ne v5, v8, :cond_35

    :cond_34
    move v0, v1

    :cond_35
    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->widthPixels:I

    if-gt v5, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v2, v2, Lcom/google/android/gms/internal/am;->heightPixels:I

    if-le v2, v0, :cond_b1

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey$a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v5, v5, Lcom/google/android/gms/internal/am;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " dp, but only has "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_a6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setVisibility(I)V

    :cond_a6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->setMeasuredDimension(II)V

    :goto_ab
    monitor-exit v4

    goto/16 :goto_1a

    :catchall_ae
    move-exception v0

    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_c .. :try_end_b0} :catchall_ae

    throw v0

    :cond_b1
    :try_start_b1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_bb

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->setVisibility(I)V

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v0, v0, Lcom/google/android/gms/internal/am;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->nD:Lcom/google/android/gms/internal/am;

    iget v1, v1, Lcom/google/android/gms/internal/am;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ey;->setMeasuredDimension(II)V
    :try_end_c6
    .catchall {:try_start_b1 .. :try_end_c6} :catchall_ae

    goto :goto_ab

    :cond_c7
    move v2, v0

    goto/16 :goto_30
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->py:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/l;->a(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public q(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ey;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ey;->sA:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->cb()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->sy:Lcom/google/android/gms/internal/ey$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey$a;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method
