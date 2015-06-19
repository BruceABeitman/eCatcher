.class  Lcom/millennialmedia/android/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Z
.field private c:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/millennialmedia/android/l;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/l;->c:Ljava/lang/ref/WeakReference;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
.registers 5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/l;->b:Z
iget-object v0, p0, Lcom/millennialmedia/android/l;->a:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_42
:try_start_b
new-instance v0, Lcom/millennialmedia/android/aw;
invoke-direct {v0}, Lcom/millennialmedia/android/aw;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/l;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
move-result-object v0
if-eqz v0, :cond_42
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
if-eqz v0, :cond_42
if-eqz v1, :cond_42
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0x194
if-eq v1, v2, :cond_42
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
if-eqz v0, :cond_42
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/millennialmedia/android/l;->b:Z
:try_end_39
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_3a
:goto_39
return-object v0
:catch_3a
move-exception v0
const-string v1, "AdViewOverlayView"
const-string v2, "Unable to get weboverlay"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_42
const/4 v0, 0x0
goto :goto_39
.end method
.method protected a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/l;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_30
iget-boolean v1, p0, Lcom/millennialmedia/android/l;->b:Z
if-eqz v1, :cond_1b
iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/millennialmedia/android/g;
if-eqz v1, :cond_31
invoke-virtual {v1}, Lcom/millennialmedia/android/g;->d()V
:cond_1b
:goto_1b
if-eqz p1, :cond_30
iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
if-eqz v1, :cond_30
iget-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v1, :cond_30
iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, p0, Lcom/millennialmedia/android/l;->a:Ljava/lang/String;
invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/android/bs;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
return-void
:cond_31
invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Lcom/millennialmedia/android/AdViewOverlayView;)V
goto :goto_1b
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/l;->a([Ljava/lang/Void;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/l;->a(Ljava/lang/String;)V
return-void
.end method
.method protected onPreExecute()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/l;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
if-eqz v0, :cond_13
invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->c(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;
move-result-object v1
if-nez v1, :cond_13
invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->d(Lcom/millennialmedia/android/AdViewOverlayView;)V
:cond_13
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
return-void
.end method