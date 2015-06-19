.class  Lcom/millennialmedia/android/u;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.implements Lcom/millennialmedia/android/b;
.field private static final a:Ljava/lang/String; = "availableCachedVideos"
.field private static final d:Ljava/lang/String; = "cacheVideo"
.field private static final e:Ljava/lang/String; = "endVideo"
.field private static final f:Ljava/lang/String; = "pauseVideo"
.field private static final g:Ljava/lang/String; = "playCachedVideo"
.field private static final h:Ljava/lang/String; = "playVideo"
.field private static final i:Ljava/lang/String; = "restartVideo"
.field private static final j:Ljava/lang/String; = "videoIdExists"
.field private static final k:Ljava/lang/String; = "BridgeMMCachedVideo"
.field private l:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
return-void
.end method
.method private a()Lcom/millennialmedia/android/dn;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/u;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/millennialmedia/android/u;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/millennialmedia/android/u;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;
move-result-object v0
instance-of v0, v0, Lcom/millennialmedia/android/MMActivity;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/millennialmedia/android/u;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_48
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;
move-result-object v0
if-eqz v0, :cond_48
instance-of v2, v0, Lcom/millennialmedia/android/MMActivity;
if-eqz v2, :cond_48
check-cast v0, Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->i()Lcom/millennialmedia/android/bz;
move-result-object v2
if-eqz v2, :cond_48
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->i()Lcom/millennialmedia/android/bz;
move-result-object v2
instance-of v2, v2, Lcom/millennialmedia/android/dn;
if-eqz v2, :cond_48
invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->i()Lcom/millennialmedia/android/bz;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/dn;
:goto_47
return-object v0
:cond_48
move-object v0, v1
goto :goto_47
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
const-string v1, "availableCachedVideos"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_d
:goto_d
return-object v0
:cond_e
const-string v1, "cacheVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_1b
const-string v1, "endVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_28
const-string v1, "pauseVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_35
const-string v1, "playCachedVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_42
const-string v1, "playVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_4f
const-string v1, "restartVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_5c
const-string v1, "videoIdExists"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/u;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
.end method
.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "videoId"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_2d
if-eqz v0, :cond_2d
invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v2
check-cast v2, Lcom/millennialmedia/android/VideoAd;
if-eqz v2, :cond_2d
invoke-virtual {v2, v0}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {v2}, Lcom/millennialmedia/android/VideoAd;->a()Z
move-result v0
if-nez v0, :cond_2d
invoke-static {v1}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_2c
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_2c
.end method
.method public a(Lcom/millennialmedia/android/ai;)V
.registers 2
return-void
.end method
.method public a(Lcom/millennialmedia/android/ai;Z)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz p2, :cond_10
if-eqz v0, :cond_10
invoke-static {v0, p1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Lcom/millennialmedia/android/ai;)Z
:cond_10
iput-boolean p2, p0, Lcom/millennialmedia/android/u;->l:Z
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
monitor-exit p0
return-void
:catchall_17
move-exception v0
monitor-exit p0
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_17
throw v0
.end method
.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 6
iget-object v0, p0, Lcom/millennialmedia/android/u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_23
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
const/4 v2, 0x2
new-instance v3, Lcom/millennialmedia/android/u$1;
invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/android/u$1;-><init>(Lcom/millennialmedia/android/u;Landroid/content/Context;Lorg/json/JSONArray;)V
invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V
new-instance v0, Lcom/millennialmedia/android/cg;
invoke-direct {v0}, Lcom/millennialmedia/android/cg;-><init>()V
const/4 v2, 0x1
iput v2, v0, Lcom/millennialmedia/android/cg;->c:I
iput-object v1, v0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method public c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 8
const/4 v3, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "videoId"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_43
if-eqz v0, :cond_43
invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v2
check-cast v2, Lcom/millennialmedia/android/VideoAd;
if-eqz v2, :cond_43
invoke-virtual {v2, v0, v3, v5}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
move-result v4
if-eqz v4, :cond_43
const-string v3, "PROPERTY_EXPANDING"
invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {p0, v3}, Lcom/millennialmedia/android/u;->b(Ljava/lang/String;)J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;J)V
const-string v0, "Playing Video(%s)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v1, v2, v5
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_42
return-object v0
:cond_43
move-object v0, v3
goto :goto_42
.end method
.method public declared-synchronized d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 10
const/4 v2, 0x0
monitor-enter p0
:try_start_2
iget-object v0, p0, Lcom/millennialmedia/android/u;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "url"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_a9
if-eqz v1, :cond_c5
if-eqz v0, :cond_c5
:try_start_16
new-instance v3, Lcom/millennialmedia/android/aw;
invoke-direct {v3}, Lcom/millennialmedia/android/aw;-><init>()V
invoke-virtual {v3, v1}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
move-result-object v3
if-nez v3, :cond_2b
const-string v0, "BridgeMMCachedVideo"
const-string v1, "HTTP response is null"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_28
.catchall {:try_start_16 .. :try_end_28} :catchall_a9
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_3a
move-object v0, v2
:goto_29
monitor-exit p0
return-object v0
:try_start_2b
:cond_2b
invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
:try_end_2e
.catchall {:try_start_2b .. :try_end_2e} :catchall_a9
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_3a
move-result-object v3
if-nez v3, :cond_44
:try_start_31
const-string v0, "BridgeMMCachedVideo"
const-string v1, "Null HTTP entity"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_29
:catch_3a
move-exception v0
const-string v1, "BridgeMMCachedVideo"
const-string v3, "HTTP error: "
invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto :goto_29
:cond_44
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-nez v4, :cond_57
const-string v0, "BridgeMMCachedVideo"
const-string v1, "Millennial ad return failed. Zero content length returned."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_29
:cond_57
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v4
if-eqz v4, :cond_c5
invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_c5
invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
const-string v5, "application/json"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_6c
.catchall {:try_start_31 .. :try_end_6c} :catchall_a9
move-result v4
if-eqz v4, :cond_c5
:try_start_6f
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
invoke-static {v3}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/millennialmedia/android/VideoAd;
invoke-direct {v4, v3}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
:try_end_7c
.catchall {:try_start_6f .. :try_end_7c} :catchall_a9
.catch Ljava/lang/IllegalStateException; {:try_start_6f .. :try_end_7c} :catch_ac
.catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_b7
if-eqz v4, :cond_c5
:try_start_7e
invoke-virtual {v4}, Lcom/millennialmedia/android/VideoAd;->b()Z
move-result v3
if-eqz v3, :cond_c5
const/4 v3, 0x3
iput v3, v4, Lcom/millennialmedia/android/VideoAd;->i:I
const/4 v3, 0x0
invoke-static {v0, v3, v4, p0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z
:try_end_8b
.catchall {:try_start_7e .. :try_end_8b} :catchall_a9
move-result v0
if-eqz v0, :cond_d9
:try_start_8e
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
iget-boolean v0, p0, Lcom/millennialmedia/android/u;->l:Z
if-eqz v0, :cond_c2
const-string v0, "Cached video(%s)"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v3, v4
invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_a4
.catchall {:try_start_8e .. :try_end_a4} :catchall_d4
.catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_a4} :catch_c8
move-result-object v0
:try_start_a5
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
:try_end_a8
.catchall {:try_start_a5 .. :try_end_a8} :catchall_a9
goto :goto_29
:catchall_a9
move-exception v0
monitor-exit p0
throw v0
:catch_ac
move-exception v0
:try_start_ad
const-string v1, "BridgeMMCachedVideo"
const-string v3, "Millennial ad return failed. Invalid response data."
invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto/16 :goto_29
:catch_b7
move-exception v0
const-string v1, "BridgeMMCachedVideo"
const-string v3, "Millennial ad return failed. Invalid response data."
invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v0, v2
goto/16 :goto_29
:cond_c2
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
:try_end_c5
.catchall {:try_start_ad .. :try_end_c5} :catchall_a9
:goto_c5
:cond_c5
move-object v0, v2
goto/16 :goto_29
:catch_c8
move-exception v0
:try_start_c9
const-string v1, "BridgeMMCachedVideo"
const-string v3, "Caching interrupted: "
invoke-static {v1, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_d0
.catchall {:try_start_c9 .. :try_end_d0} :catchall_d4
:try_start_d0
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
goto :goto_c5
:catchall_d4
move-exception v0
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
throw v0
:cond_d9
const-string v0, "Unable to start download for Cached video(%s)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_e8
.catchall {:try_start_d0 .. :try_end_e8} :catchall_a9
move-result-object v0
goto/16 :goto_29
.end method
.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/u;->a()Lcom/millennialmedia/android/dn;
move-result-object v0
if-eqz v0, :cond_10
new-instance v1, Lcom/millennialmedia/android/u$2;
invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/u$2;-><init>(Lcom/millennialmedia/android/u;Lcom/millennialmedia/android/dn;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/u;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/u;->a()Lcom/millennialmedia/android/dn;
move-result-object v0
if-eqz v0, :cond_10
new-instance v1, Lcom/millennialmedia/android/u$3;
invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/u$3;-><init>(Lcom/millennialmedia/android/u;Lcom/millennialmedia/android/dn;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/u;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/u;->a()Lcom/millennialmedia/android/dn;
move-result-object v0
if-eqz v0, :cond_10
new-instance v1, Lcom/millennialmedia/android/u$4;
invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/u$4;-><init>(Lcom/millennialmedia/android/u;Lcom/millennialmedia/android/dn;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/u;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/u;->a()Lcom/millennialmedia/android/dn;
move-result-object v0
if-eqz v0, :cond_10
new-instance v1, Lcom/millennialmedia/android/u$5;
invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/u$5;-><init>(Lcom/millennialmedia/android/u;Lcom/millennialmedia/android/dn;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/u;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_f
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method