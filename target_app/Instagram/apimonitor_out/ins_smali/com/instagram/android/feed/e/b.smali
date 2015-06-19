.class final Lcom/instagram/android/feed/e/b;
.super Landroid/os/Handler;
.source "DelayedMediaPlacer.java"
.field final synthetic a:Lcom/instagram/android/feed/e/a;
.method constructor <init>(Lcom/instagram/android/feed/e/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
if-nez v0, :cond_34
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-string v1, "pending_media_key"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;
invoke-static {v1}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/android/feed/e/a;)Ljava/util/Map;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/b;
iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;
invoke-static {v1, v0}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/android/feed/e/a;Lcom/instagram/creation/b/a/b;)V
iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;
invoke-static {v1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;
move-result-object v1
if-eqz v1, :cond_34
iget-object v1, p0, Lcom/instagram/android/feed/e/b;->a:Lcom/instagram/android/feed/e/a;
invoke-static {v1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;
move-result-object v1
invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->A()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/instagram/android/feed/e/d;->a(Ljava/lang/String;)V
:cond_34
return-void
.end method