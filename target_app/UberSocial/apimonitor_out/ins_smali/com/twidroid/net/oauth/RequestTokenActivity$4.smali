.class  Lcom/twidroid/net/oauth/RequestTokenActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$4;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$4;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V
return-void
.end method