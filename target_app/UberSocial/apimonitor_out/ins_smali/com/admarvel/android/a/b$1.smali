.class  Lcom/admarvel/android/a/b$1;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/a/b;
.method constructor <init>(Lcom/admarvel/android/a/b;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/a/b$1;->a:Lcom/admarvel/android/a/b;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/admarvel/android/a/b$1;->a:Lcom/admarvel/android/a/b;
invoke-static {v0}, Lcom/admarvel/android/a/b;->a(Lcom/admarvel/android/a/b;)Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/admarvel/android/a/b$1;->a:Lcom/admarvel/android/a/b;
invoke-static {v0}, Lcom/admarvel/android/a/b;->a(Lcom/admarvel/android/a/b;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v2, v0
check-cast v2, Landroid/content/Context;
if-eqz v2, :cond_53
new-instance v0, Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Firing Install Tracking Pixels: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/a/b$1;->a:Lcom/admarvel/android/a/b;
invoke-static {v3}, Lcom/admarvel/android/a/b;->b(Lcom/admarvel/android/a/b;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v2, p0, Lcom/admarvel/android/a/b$1;->a:Lcom/admarvel/android/a/b;
invoke-static {v2}, Lcom/admarvel/android/a/b;->b(Lcom/admarvel/android/a/b;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_53
return-void
.end method