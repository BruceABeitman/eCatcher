.class  Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ubermedia/net/b/b;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/net/oauth/RequestTokenActivity$2;
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$2;
iput-object p2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic a(Landroid/app/Activity;)V
.registers 2
check-cast p1, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
return-void
.end method
.method public a(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
.registers 4
const v0, 0x7f090179
invoke-virtual {p1, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/ubermedia/net/b/a;)Lcom/ubermedia/net/b/a;
return-void
.end method