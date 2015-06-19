.class  Lcom/twidroid/fragments/f$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f$2;->a:Lcom/twidroid/fragments/f;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 4
const-string v0, "telly://open-video"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f$2;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->e()V
const/4 v0, 0x0
goto :goto_9
.end method