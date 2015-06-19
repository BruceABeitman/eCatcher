.class Lcom/millennialmedia/android/cq;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "PROPERTY_BANNER_TYPE"

.field static final b:Ljava/lang/String; = "PROPERTY_STATE"

.field static final c:Ljava/lang/String; = "PROPERTY_EXPANDING"

.field static final d:Ljava/lang/String; = "interface"

.field private static final t:Ljava/lang/String; = "MMWebView"


# instance fields
.field e:J

.field volatile f:Z

.field volatile g:Ljava/lang/String;

.field h:Z

.field final i:Ljava/lang/String;

.field final j:Landroid/view/GestureDetector;

.field volatile k:Z

.field l:Ljava/lang/String;

.field m:I

.field volatile n:Z

.field o:I

.field p:I

.field volatile q:Z

.field r:Z

.field s:Z

.field private u:Lcom/millennialmedia/android/HttpMMHeaders;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 11

    const/16 v0, -0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v6, p0, Lcom/millennialmedia/android/cq;->h:Z

    iput v0, p0, Lcom/millennialmedia/android/cq;->o:I

    iput v0, p0, Lcom/millennialmedia/android/cq;->p:I

    iput-boolean v5, p0, Lcom/millennialmedia/android/cq;->q:Z

    iput-boolean v5, p0, Lcom/millennialmedia/android/cq;->r:Z

    iput-boolean v5, p0, Lcom/millennialmedia/android/cq;->s:Z

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/cq;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/cq;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/cq;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Lcom/millennialmedia/android/ct;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/ct;-><init>(Lcom/millennialmedia/android/cq;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    iput-wide p2, p0, Lcom/millennialmedia/android/cq;->e:J

    const-string v0, "MMWebView"

    const-string v1, "Assigning WebView internal id: %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/millennialmedia/android/cq;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3ad7

    iget-wide v2, p0, Lcom/millennialmedia/android/cq;->e:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->setId(I)V

    invoke-static {p1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/as;->e:Z

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->c()V

    :goto_53
    new-instance v0, Lcom/millennialmedia/android/cs;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cs;-><init>(Lcom/millennialmedia/android/cq;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/cq;->i:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_87

    const-string v1, "MMWebView"

    const-string v2, "Disabling user gesture requirement for media playback"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_87
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/cr;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/cr;-><init>(Lcom/millennialmedia/android/cq;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cq;->j:Landroid/view/GestureDetector;

    return-void

    :cond_9b
    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->a()V

    goto :goto_53
.end method

.method private G()Z
    .registers 4

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Nexus S"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "samsung"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0x10

    if-eq v0, v1, :cond_22

    const/16 v1, 0x11

    if-ne v0, v1, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private H()Z
    .registers 3

    const/16 v1, -0x32

    iget v0, p0, Lcom/millennialmedia/android/cq;->p:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/millennialmedia/android/cq;->o:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private I()Z
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->l()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic a(Lcom/millennialmedia/android/cq;)Z
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->H()Z

    move-result v0

    return v0
.end method


# virtual methods
.method A()Lcom/millennialmedia/android/HttpMMHeaders;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->u:Lcom/millennialmedia/android/HttpMMHeaders;

    return-object v0
.end method

.method B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->u:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->u:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->u:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->g:Ljava/lang/String;

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "DEFAULT_AD_ID"

    goto :goto_12
.end method

.method C()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/millennialmedia/android/cq;->r:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->E()Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    :cond_a
    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->r:Z

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->I()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/millennialmedia/android/cq;->q:Z

    if-nez v1, :cond_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method D()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/millennialmedia/android/cq;->s:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->E()Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    :cond_a
    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->s:Z

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->I()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/millennialmedia/android/cq;->q:Z

    if-nez v1, :cond_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method E()Z
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->I()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method F()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->h:Z

    return-void
.end method

.method a()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_12

    const-string v0, "MMWebView"

    const-string v1, "Disabling acceleration"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/cq;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method a(D)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneAudioLevelChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cq;->u:Lcom/millennialmedia/android/HttpMMHeaders;

    return-void
.end method

.method declared-synchronized a(Lcom/millennialmedia/android/aq;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/android/co;->g()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->h()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/cq;->n:Z

    const-string v1, "MMWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New DTOResizeParameters = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_30

    new-instance v1, Lcom/millennialmedia/android/cq$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/cq$4;-><init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/aq;)V

    invoke-static {v1}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/millennialmedia/android/bp;)V
    .registers 4

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/millennialmedia/android/cq$3;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/cq$3;-><init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/bp;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_10} :catch_13

    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10

    :catch_13
    move-exception v0

    goto :goto_10
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneStateChange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 10

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->d()V

    invoke-static {p3}, Lcom/millennialmedia/android/cw;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p3, p1}, Lcom/millennialmedia/android/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    sget v2, Lcom/millennialmedia/android/co;->c:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_39

    const-string v2, "MMWebView"

    const-string v3, "Received ad with base url %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMWebView"

    invoke-static {v2, p1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    new-instance v2, Lcom/millennialmedia/android/cq$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/millennialmedia/android/cq$2;-><init>(Lcom/millennialmedia/android/cq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_42
    const-string v0, "MMWebView"

    const-string v2, "MMJS is not downloaded"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_1f
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/bp;)V
    .registers 9

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/cq;->b(Lcom/millennialmedia/android/bp;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->d()V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/millennialmedia/android/co;->c:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_34

    const-string v1, "MMWebView"

    const-string v2, "Received ad with base url %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MMWebView"

    invoke-static {v1, p1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {p3}, Lcom/millennialmedia/android/bp;->h()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/bp;)V

    :cond_3d
    iget-boolean v1, p3, Lcom/millennialmedia/android/bp;->f:Z

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_54
    invoke-virtual {p3}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/cw;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p3}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/millennialmedia/android/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_66
    new-instance v1, Lcom/millennialmedia/android/cq$1;

    invoke-direct {v1, p0, p3, v0, p1}, Lcom/millennialmedia/android/cq$1;-><init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/bp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_6f
    const-string v1, "MMWebView"

    const-string v2, "MMJS is not downloaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66
.end method

.method a(Ljava/util/Map;)V
    .registers 5

    const-string v1, "PROPERTY_BANNER_TYPE"

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->f()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "true"

    :goto_a
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PROPERTY_STATE"

    iget-object v1, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PROPERTY_EXPANDING"

    iget-wide v1, p0, Lcom/millennialmedia/android/cq;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_20
    const-string v0, "false"

    goto :goto_a
.end method

.method a(J)Z
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v2

    :cond_8
    const-string v3, "MMWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id check for parent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " versus "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/ch;

    iget-object v0, v0, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-wide v5, v0, Lcom/millennialmedia/android/bp;->k:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/millennialmedia/android/ch;

    iget-object v0, v1, Lcom/millennialmedia/android/ch;->p:Lcom/millennialmedia/android/bp;

    iget-wide v0, v0, Lcom/millennialmedia/android/bp;->k:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_3c
    move v2, v0

    goto :goto_7

    :cond_3e
    move v0, v2

    goto :goto_3c
.end method

.method b()V
    .registers 6

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->G()Z

    move-result v0

    if-nez v0, :cond_34

    :try_start_6
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MMWebView"

    const-string v1, "Enable softwareAcceleration"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method declared-synchronized b(Lcom/millennialmedia/android/bp;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/android/co;->g()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->z()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;

    move-result-object v0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/cq;->n:Z

    new-instance v1, Lcom/millennialmedia/android/cq$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/cq$5;-><init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/cq;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/cq;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3e
    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method c()V
    .registers 6

    invoke-direct {p0}, Lcom/millennialmedia/android/cq;->G()Z

    move-result v0

    if-nez v0, :cond_34

    :try_start_6
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MMWebView"

    const-string v1, "Enabled hardwareAcceleration"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_34
.end method

.method d()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/millennialmedia/android/af;->a()Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->r:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->s:Z

    return-void
.end method

.method e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->i:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    return v0
.end method

.method h()Lcom/millennialmedia/android/MMAdView;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method i()Lcom/millennialmedia/android/ch;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/ch;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ch;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method declared-synchronized j()Landroid/app/Activity;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v1, :cond_1b

    check-cast v0, Lcom/millennialmedia/android/MMActivity;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized k()Lcom/millennialmedia/android/AdViewOverlayView;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized l()Lcom/millennialmedia/android/MMAdView;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/millennialmedia/android/MMAdView;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/millennialmedia/android/cq;->l:Ljava/lang/String;

    :try_start_2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "MMWebView"

    const-string v2, "Error hit when calling through to loadDataWithBaseUrl"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p1, p0, Lcom/millennialmedia/android/cq;->l:Ljava/lang/String;

    :cond_11
    const-string v0, "MMWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl @@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    :try_start_2f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_6

    :catch_33
    move-exception v0

    goto :goto_6

    :cond_35
    new-instance v0, Lcom/millennialmedia/android/cq$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/cq$6;-><init>(Lcom/millennialmedia/android/cq;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public m()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    :try_start_6
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v0, "MMWebView"

    const-string v1, "No onPause()"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public n()V
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->f()Z

    move-result v0

    if-nez v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2e

    :try_start_1d
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string v0, "MMWebView"

    const-string v1, "No onResume()"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method o()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'interstitial\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_1e

    :goto_12
    iget-boolean v1, p0, Lcom/millennialmedia/android/cq;->k:Z

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v3, v3}, Lcom/millennialmedia/android/cq;->setMeasuredDimension(II)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/cq;->setMeasuredDimension(II)V

    goto :goto_19

    :cond_1e
    move v0, v1

    goto :goto_12
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/millennialmedia/android/cq;->h:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->x()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_2c

    :cond_22
    new-instance v0, Lcom/millennialmedia/android/cq$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cq$7;-><init>(Lcom/millennialmedia/android/cq;)V

    const-wide/16 v1, 0x320

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;J)V

    :cond_2c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->requestFocus()Z

    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/cq;->j:Landroid/view/GestureDetector;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/millennialmedia/android/cq;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_47

    const-string v0, "MMWebView"

    const-string v1, "Ad clicked: action=%d x=%f y=%f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method p()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'inline\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method q()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setState(\'default\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->h:Z

    return-void
.end method

.method r()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setState(\'hidden\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    const-string v0, "hidden"

    iput-object v0, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    return-void
.end method

.method s()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->q:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/millennialmedia/android/cq;->m:I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->b()V

    :cond_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method t()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->q:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMWebView originally from("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/cq;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") MRaidState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "javascript:MMJS.sdk.setState(\'expanded\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    const-string v0, "expanded"

    iput-object v0, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/millennialmedia/android/cq;->r:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/cq;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/cq;->h:Z

    return-void
.end method

.method v()V
    .registers 2

    const-string v0, "javascript:MMJS.sdk.ready();"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method w()V
    .registers 4

    new-instance v0, Lcom/millennialmedia/android/f;

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/f;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.setAdProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method x()V
    .registers 4

    invoke-static {p0}, Lcom/millennialmedia/android/dh;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.setAdSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method y()V
    .registers 3

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method z()Z
    .registers 3

    const-string v0, "resized"

    iget-object v1, p0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
