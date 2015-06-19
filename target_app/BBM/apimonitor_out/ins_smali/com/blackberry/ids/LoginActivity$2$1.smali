.class  Lcom/blackberry/ids/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/blackberry/ids/LoginActivity$2;
.method constructor <init>(Lcom/blackberry/ids/LoginActivity$2;)V
.registers 2
iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$2$1;->a:Lcom/blackberry/ids/LoginActivity$2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const-string v0, "shouldInterceptRequest calling javascript"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$2$1;->a:Lcom/blackberry/ids/LoginActivity$2;
iget-object v0, v0, Lcom/blackberry/ids/LoginActivity$2;->a:Landroid/webkit/WebView;
const-string v1, "javascript:( function () { var displayName = document.getElementById(\'bbmdn\').value; window.HTMLOUT.jsCallback(displayName);} ) ()"
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method