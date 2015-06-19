.class  Lcom/twidroid/fragments/f$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f$3;->a:Lcom/twidroid/fragments/f;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/f$3;->a:Lcom/twidroid/fragments/f;
iget-object v0, v0, Lcom/twidroid/fragments/f;->b:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/fragments/f$3;->a:Lcom/twidroid/fragments/f;
invoke-static {v0, p2}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;I)V
const/16 v0, 0x64
if-ne p2, v0, :cond_16
iget-object v0, p0, Lcom/twidroid/fragments/f$3;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->f()V
:cond_16
return-void
.end method