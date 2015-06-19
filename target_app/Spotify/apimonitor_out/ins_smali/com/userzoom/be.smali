.class public Lcom/userzoom/be;
.super Ljava/lang/Object;
.field protected b:Landroid/content/Context;
.field protected c:Landroid/webkit/WebView;
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/userzoom/be;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/userzoom/be;->c:Landroid/webkit/WebView;
return-void
.end method
.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
new-instance v1, Lcom/userzoom/bf;
invoke-direct {v1, p0, p1}, Lcom/userzoom/bf;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public log(Ljava/lang/String;)V
.registers 3
const-string v0, "InterceptDialogJavascriptInterface"
invoke-static {v0, p1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public openBrowser(Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
iget-object v1, p0, Lcom/userzoom/be;->b:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public saveReferrer()V
.registers 6
iget-object v0, p0, Lcom/userzoom/be;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lcom/userzoom/be;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const-string v2, "app_name"
const-string v3, "string"
iget-object v4, p0, Lcom/userzoom/be;->b:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
iget-object v1, p0, Lcom/userzoom/be;->c:Landroid/webkit/WebView;
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/userzoom/ap;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/userzoom/be;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
return-void
.end method
.method public setDialogMessage(Ljava/lang/String;)V
.registers 4
const-string v0, "\\<.*?\\>"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
return-void
.end method
.method public timeOut(Ljava/lang/String;I)V
.registers 6
const-string v0, "InterceptDialogJavascriptInterface"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Execute function "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " on "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " miliseconds"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
if-eq p2, v0, :cond_2b
int-to-long v0, p2
:try_start_28
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:cond_2b
:try_end_2b
.catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_46
:goto_2b
iget-object v0, p0, Lcom/userzoom/be;->c:Landroid/webkit/WebView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "javascript:(function () {"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "})()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/be;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
return-void
:catch_46
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_2b
.end method