.class public final Lcom/google/android/gms/internal/er;
.super Landroid/webkit/WebView;
.implements Landroid/webkit/DownloadListener;
.field private final a:Lcom/google/android/gms/internal/eu;
.field private final b:Lcom/google/android/gms/internal/es;
.field private final c:Ljava/lang/Object;
.field private final d:Lcom/google/android/gms/internal/lh;
.field private final e:Lcom/google/android/gms/internal/dx;
.field private f:Lcom/google/android/gms/internal/cc;
.field private g:Lcom/google/android/gms/internal/ak;
.field private h:Z
.field private i:Z
.field private final j:Landroid/view/WindowManager;
.method private constructor <init>(Lcom/google/android/gms/internal/es;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)V
.registers 12
const/16 v4, 0xb
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/es;
iput-object p2, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iput-boolean p3, p0, Lcom/google/android/gms/internal/er;->h:Z
iput-object p5, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/lh;
iput-object p6, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/dx;
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
iput-object v0, p0, Lcom/google/android/gms/internal/er;->j:Landroid/view/WindowManager;
invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/er;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
iget-object v1, p6, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;
invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x11
if-lt v1, v2, :cond_73
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/android/gms/internal/em;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V
:goto_4e
:cond_4e
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/er;->setDownloadListener(Landroid/webkit/DownloadListener;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v4, :cond_7f
new-instance v0, Lcom/google/android/gms/internal/ex;
invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/ex;-><init>(Lcom/google/android/gms/internal/er;Z)V
iput-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
:goto_5c
iget-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->setWebViewClient(Landroid/webkit/WebViewClient;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_87
new-instance v0, Lcom/google/android/gms/internal/ey;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ey;-><init>(Lcom/google/android/gms/internal/er;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
:goto_6f
:cond_6f
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->j()V
return-void
:cond_73
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v1, v4, :cond_4e
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/android/gms/internal/em;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
goto :goto_4e
:cond_7f
new-instance v0, Lcom/google/android/gms/internal/eu;
invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/eu;-><init>(Lcom/google/android/gms/internal/er;Z)V
iput-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
goto :goto_5c
:cond_87
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v4, :cond_6f
new-instance v0, Lcom/google/android/gms/internal/ew;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ew;-><init>(Lcom/google/android/gms/internal/er;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
goto :goto_6f
.end method
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;
.registers 13
new-instance v1, Lcom/google/android/gms/internal/es;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/internal/er;
move-object v2, p1
move v3, p2
move v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/er;-><init>(Lcom/google/android/gms/internal/es;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)V
return-object v0
.end method
.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
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
const-string v2, "Dispatching AFMA event: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method private j()V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/er;->h:Z
if-nez v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget-boolean v0, v0, Lcom/google/android/gms/internal/ak;->e:Z
if-eqz v0, :cond_29
:cond_d
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-ge v0, v2, :cond_1d
const-string v0, "Disabling hardware acceleration on an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->k()V
:goto_1b
monitor-exit v1
return-void
:cond_1d
const-string v0, "Enabling hardware acceleration on an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->l()V
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
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->k()V
goto :goto_1b
:cond_38
const-string v0, "Enabling hardware acceleration on an AdView."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->l()V
:try_end_40
.catchall {:try_start_29 .. :try_end_40} :catchall_26
goto :goto_1b
.end method
.method private k()V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/er;->i:Z
if-nez v0, :cond_12
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v0, v2, :cond_12
const/4 v0, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
:cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/er;->i:Z
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_17
return-void
:catchall_17
move-exception v0
monitor-exit v1
throw v0
.end method
.method private l()V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/er;->i:Z
if-eqz v0, :cond_12
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v0, v2, :cond_12
const/4 v0, 0x0
const/4 v2, 0x0
invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
:cond_12
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/er;->i:Z
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_17
return-void
:catchall_17
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->a()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/internal/er;->j:Landroid/view/WindowManager;
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
:try_start_17
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "width"
iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "height"
iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
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
invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
:try_end_44
.catch Lorg/json/JSONException; {:try_start_17 .. :try_end_44} :catch_45
goto :goto_8
:catch_45
move-exception v0
const-string v1, "Error occured while obtaining screen information."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method
.method public final a(Landroid/content/Context;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/es;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/es;->setBaseContext(Landroid/content/Context;)V
return-void
.end method
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;)V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/er;->b:Lcom/google/android/gms/internal/es;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/es;->setBaseContext(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/er;->f:Lcom/google/android/gms/internal/cc;
iput-object p2, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/er;->h:Z
invoke-static {p0}, Lcom/google/android/gms/internal/ej;->b(Landroid/webkit/WebView;)V
const-string v0, "about:blank"
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->b()V
monitor-exit v1
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_1f
return-void
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/ak;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->requestLayout()V
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/cc;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lcom/google/android/gms/internal/er;->f:Lcom/google/android/gms/internal/cc;
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
.registers 4
:try_start_0
invoke-static {p2}, Lcom/google/android/gms/internal/ej;->a(Ljava/util/Map;)Lorg/json/JSONObject;
:try_end_3
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_8
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
:goto_7
return-void
:catch_8
move-exception v0
const-string v0, "Could not convert parameters to JSON."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
goto :goto_7
.end method
.method public final a(Z)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-boolean p1, p0, Lcom/google/android/gms/internal/er;->h:Z
invoke-direct {p0}, Lcom/google/android/gms/internal/er;->j()V
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 4
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
const-string v1, "version"
iget-object v2, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/dx;
iget-object v2, v2, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "onhide"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public final c()V
.registers 4
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
const-string v1, "version"
iget-object v2, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/dx;
iget-object v2, v2, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "onshow"
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public final d()Lcom/google/android/gms/internal/cc;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/er;->f:Lcom/google/android/gms/internal/cc;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final e()Lcom/google/android/gms/internal/ak;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final f()Lcom/google/android/gms/internal/eu;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/er;->a:Lcom/google/android/gms/internal/eu;
return-object v0
.end method
.method public final g()Lcom/google/android/gms/internal/lh;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/lh;
return-object v0
.end method
.method public final h()Lcom/google/android/gms/internal/dx;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/er;->e:Lcom/google/android/gms/internal/dx;
return-object v0
.end method
.method public final i()Z
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/er;->h:Z
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/er; onDownloadStart "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_15
.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_15} :catch_16
:goto_15
const-string v1, " - Lcom/google/android/gms/internal/er; onDownloadStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
goto :goto_15
.end method
.method protected final onMeasure(II)V
.registers 12
const v0, 0x7fffffff
const/high16 v8, 0x4000
const/16 v7, 0x8
const/high16 v6, -0x8000
iget-object v4, p0, Lcom/google/android/gms/internal/er;->c:Ljava/lang/Object;
monitor-enter v4
:try_start_c
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->isInEditMode()Z
move-result v1
if-nez v1, :cond_16
iget-boolean v1, p0, Lcom/google/android/gms/internal/er;->h:Z
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
iget-object v5, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v5, v5, Lcom/google/android/gms/internal/ak;->g:I
if-gt v5, v2, :cond_41
iget-object v2, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v2, v2, Lcom/google/android/gms/internal/ak;->d:I
if-le v2, v0, :cond_93
:cond_41
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Not enough space to show ad. Needs "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v2, v2, Lcom/google/android/gms/internal/ak;->g:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "x"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v2, v2, Lcom/google/android/gms/internal/ak;->d:I
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
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getVisibility()I
move-result v0
if-eq v0, v7, :cond_89
const/4 v0, 0x4
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->setVisibility(I)V
:cond_89
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/er;->setMeasuredDimension(II)V
:goto_8e
monitor-exit v4
:try_end_8f
.catchall {:try_start_c .. :try_end_8f} :catchall_90
goto :goto_1a
:catchall_90
move-exception v0
monitor-exit v4
throw v0
:try_start_93
:cond_93
invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getVisibility()I
move-result v0
if-eq v0, v7, :cond_9d
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->setVisibility(I)V
:cond_9d
iget-object v0, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v0, v0, Lcom/google/android/gms/internal/ak;->g:I
iget-object v1, p0, Lcom/google/android/gms/internal/er;->g:Lcom/google/android/gms/internal/ak;
iget v1, v1, Lcom/google/android/gms/internal/ak;->d:I
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/er;->setMeasuredDimension(II)V
:try_end_a8
.catchall {:try_start_93 .. :try_end_a8} :catchall_90
goto :goto_8e
:cond_a9
move v2, v0
goto :goto_30
.end method
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/lh;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/er;->d:Lcom/google/android/gms/internal/lh;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lh;->a(Landroid/view/MotionEvent;)V
:cond_9
invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method