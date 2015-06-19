.class final Lcom/millennialmedia/android/cw$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/content/Context;
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/millennialmedia/android/cw$1;->b:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
const-string v0, "MRaid"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "MMJS -  download start ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
iget-object v1, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
const-string v1, "MRaid"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "MMJS -  download finish ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/millennialmedia/android/cw$1;->b:Landroid/content/Context;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/cw;->a(Landroid/content/Context;Ljava/io/InputStream;)Z
move-result v0
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/millennialmedia/android/cw$1;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cw;->c(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8a
const-string v0, "MRaid"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "MMJS -  download saved ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/cw$1;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8a
.catchall {:try_start_0 .. :try_end_8a} :catchall_e1
.catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_8a} :catch_9c
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8a} :catch_b3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_8a} :catch_ca
:cond_8a
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_9b
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cx;
if-eqz v0, :cond_9b
:goto_98
invoke-interface {v0}, Lcom/millennialmedia/android/cx;->a()V
:cond_9b
return-void
:catch_9c
move-exception v0
:try_start_9d
const-string v1, "MRaid"
const-string v2, "Mraid download exception: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a4
.catchall {:try_start_9d .. :try_end_a4} :catchall_e1
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_9b
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cx;
if-eqz v0, :cond_9b
goto :goto_98
:catch_b3
move-exception v0
:try_start_b4
const-string v1, "MRaid"
const-string v2, "Mraid download exception: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_bb
.catchall {:try_start_b4 .. :try_end_bb} :catchall_e1
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_9b
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cx;
if-eqz v0, :cond_9b
goto :goto_98
:catch_ca
move-exception v0
:try_start_cb
const-string v1, "MRaid"
const-string v2, "Mraid download exception: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_d2
.catchall {:try_start_cb .. :try_end_d2} :catchall_e1
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_9b
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cx;
if-eqz v0, :cond_9b
goto :goto_98
:catchall_e1
move-exception v0
move-object v1, v0
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_f4
sget-object v0, Lcom/millennialmedia/android/cw;->g:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cx;
if-eqz v0, :cond_f4
invoke-interface {v0}, Lcom/millennialmedia/android/cx;->a()V
:cond_f4
throw v1
.end method