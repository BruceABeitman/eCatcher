.class public final Lcom/google/android/gms/internal/dd;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private mF:Lcom/google/android/gms/internal/ab;

.field private final mG:Lcom/google/android/gms/internal/db;

.field private final mg:Ljava/lang/Object;

.field private final nP:Lcom/google/android/gms/internal/l;

.field private final pY:Lcom/google/android/gms/internal/de;

.field private final pZ:Lcom/google/android/gms/internal/dd$a;

.field private qa:Lcom/google/android/gms/internal/bo;

.field private qb:Z

.field private qc:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/dd$a;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)V
    .registers 11

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dd;->pZ:Lcom/google/android/gms/internal/dd$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/dd;->qb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/dd;->nP:Lcom/google/android/gms/internal/l;

    iput-object p6, p0, Lcom/google/android/gms/internal/dd;->mG:Lcom/google/android/gms/internal/db;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/dd;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v1, p6, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_62

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cx;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    :cond_3d
    :goto_3d
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/dd;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/dg;-><init>(Lcom/google/android/gms/internal/dd;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dd;->pY:Lcom/google/android/gms/internal/de;

    :goto_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->pY:Lcom/google/android/gms/internal/de;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_76

    new-instance v0, Lcom/google/android/gms/internal/dh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/internal/dd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bf()V

    return-void

    :cond_62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cw;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    goto :goto_3d

    :cond_6e
    new-instance v0, Lcom/google/android/gms/internal/de;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/de;-><init>(Lcom/google/android/gms/internal/dd;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dd;->pY:Lcom/google/android/gms/internal/de;

    goto :goto_4b

    :cond_76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5e

    new-instance v0, Lcom/google/android/gms/internal/df;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/df;-><init>(Lcom/google/android/gms/internal/dd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_5e
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/dd;
    .registers 13

    new-instance v1, Lcom/google/android/gms/internal/dd$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dd$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/dd;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/dd;-><init>(Lcom/google/android/gms/internal/dd$a;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/db;)V

    return-object v0
.end method

.method private bf()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qb:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_29

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1d

    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bg()V

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bh()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_1b

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_29
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_38

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bg()V

    goto :goto_1b

    :cond_38
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bh()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    goto :goto_1b
.end method

.method private bg()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qc:Z

    if-nez v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/cw;->c(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qc:Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bh()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qc:Z

    if-eqz v0, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/cw;->d(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qc:Z

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final Q()Lcom/google/android/gms/internal/ab;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->pZ:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dd$a;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dd;->qa:Lcom/google/android/gms/internal/bo;

    iput-object p2, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qb:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/cv;->b(Landroid/webkit/WebView;)V

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->pY:Lcom/google/android/gms/internal/de;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/de;->reset()V

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ab;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->requestLayout()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/bo;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/dd;->qa:Lcom/google/android/gms/internal/bo;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:AFMA_ReceiveMessage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_24

    :try_start_14
    invoke-static {p2}, Lcom/google/android/gms/internal/cv;->m(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_43

    :cond_24
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/da;->v(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->loadUrl(Ljava/lang/String;)V

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string v0, "Could not convert AFMA event parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public final aY()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/dd;->mG:Lcom/google/android/gms/internal/db;

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final aZ()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/dd;->mG:Lcom/google/android/gms/internal/db;

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final ba()Lcom/google/android/gms/internal/bo;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->qa:Lcom/google/android/gms/internal/bo;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bb()Lcom/google/android/gms/internal/de;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->pY:Lcom/google/android/gms/internal/de;

    return-object v0
.end method

.method public final bc()Lcom/google/android/gms/internal/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->nP:Lcom/google/android/gms/internal/l;

    return-object v0
.end method

.method public final bd()Lcom/google/android/gms/internal/db;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->mG:Lcom/google/android/gms/internal/db;

    return-object v0
.end method

.method public final be()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dd;->qb:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final n(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/dd;->qb:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;->bf()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected final onMeasure(II)V
    .registers 12

    const v0, 0x7fffffff

    const/high16 v8, 0x4000

    const/16 v7, 0x8

    const/high16 v6, -0x8000

    iget-object v4, p0, Lcom/google/android/gms/internal/dd;->mg:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/gms/internal/dd;->qb:Z

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

    if-ne v2, v8, :cond_a9

    :cond_2f
    move v2, v3

    :goto_30
    if-eq v5, v6, :cond_34

    if-ne v5, v8, :cond_35

    :cond_34
    move v0, v1

    :cond_35
    iget-object v5, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v5, v5, Lcom/google/android/gms/internal/ab;->widthPixels:I

    if-gt v5, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->heightPixels:I

    if-le v2, v0, :cond_93

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space to show ad. Needs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->heightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pixels, but only has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixels."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_89

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->setVisibility(I)V

    :cond_89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dd;->setMeasuredDimension(II)V

    :goto_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_c .. :try_end_8f} :catchall_90

    goto :goto_1a

    :catchall_90
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_93
    :try_start_93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dd;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_9d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dd;->setVisibility(I)V

    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v0, v0, Lcom/google/android/gms/internal/ab;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->mF:Lcom/google/android/gms/internal/ab;

    iget v1, v1, Lcom/google/android/gms/internal/ab;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dd;->setMeasuredDimension(II)V
    :try_end_a8
    .catchall {:try_start_93 .. :try_end_a8} :catchall_90

    goto :goto_8e

    :cond_a9
    move v2, v0

    goto :goto_30
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->nP:Lcom/google/android/gms/internal/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->nP:Lcom/google/android/gms/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/l;->a(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->pZ:Lcom/google/android/gms/internal/dd$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dd$a;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method
