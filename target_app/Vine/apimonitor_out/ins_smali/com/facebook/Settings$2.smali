.class final Lcom/facebook/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$applicationContext:Landroid/content/Context;
.field final synthetic val$applicationId:Ljava/lang/String;
.field final synthetic val$callback:Lcom/facebook/Request$Callback;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
.registers 4
iput-object p1, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v2, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;
iget-object v3, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;
move-result-object v1
iget-object v2, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;
if-eqz v2, :cond_1d
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v2, Lcom/facebook/Settings$2$1;
invoke-direct {v2, p0, v1}, Lcom/facebook/Settings$2$1;-><init>(Lcom/facebook/Settings$2;Lcom/facebook/Response;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_1d
return-void
.end method