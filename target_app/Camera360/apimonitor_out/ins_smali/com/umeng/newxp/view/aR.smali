.class  Lcom/umeng/newxp/view/aR;
.super Landroid/webkit/WebChromeClient;
.source "WapActivity.java"
.field final synthetic a:Lcom/umeng/newxp/view/aL;
.method constructor <init>(Lcom/umeng/newxp/view/aL;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/aR;->a:Lcom/umeng/newxp/view/aL;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 4
iget-object v0, p0, Lcom/umeng/newxp/view/aR;->a:Lcom/umeng/newxp/view/aL;
invoke-static {v0}, Lcom/umeng/newxp/view/aL;->c(Lcom/umeng/newxp/view/aL;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V
invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
return-void
.end method