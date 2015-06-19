.class  Lcom/millennialmedia/android/al;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/android/aj;
.field private b:Ljava/lang/String;
.field private c:Z
.method public constructor <init>(Lcom/millennialmedia/android/aj;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/millennialmedia/android/al;->b:Ljava/lang/String;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
.registers 5
:try_start_0
new-instance v0, Lcom/millennialmedia/android/aw;
invoke-direct {v0}, Lcom/millennialmedia/android/aw;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/al;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
if-eqz v0, :cond_2a
if-eqz v1, :cond_2a
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0x194
if-eq v1, v2, :cond_2a
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
if-eqz v0, :cond_2d
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/al;->c:Z
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f
:goto_2d
:cond_2d
const/4 v0, 0x0
goto :goto_29
:catch_2f
move-exception v0
const-string v1, "CachedVideoPlayerActivity"
const-string v2, "Error with http web overlay"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2d
.end method
.method protected a(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/millennialmedia/android/al;->c:Z
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
invoke-virtual {v0}, Lcom/millennialmedia/android/aj;->u()V
:cond_9
if-eqz p1, :cond_27
iget-object v0, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
invoke-static {v0}, Lcom/millennialmedia/android/aj;->a(Lcom/millennialmedia/android/aj;)Lcom/millennialmedia/android/cq;
move-result-object v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
invoke-static {v0}, Lcom/millennialmedia/android/aj;->a(Lcom/millennialmedia/android/aj;)Lcom/millennialmedia/android/cq;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/al;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
iget-object v2, v2, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/android/cq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
iget-object v0, p0, Lcom/millennialmedia/android/al;->a:Lcom/millennialmedia/android/aj;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/millennialmedia/android/aj;->b:Z
:cond_27
return-void
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/al;->a([Ljava/lang/Void;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/al;->a(Ljava/lang/String;)V
return-void
.end method