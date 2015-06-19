.class  Lcom/twidroid/TwidroidClient$18;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$18;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/TwidroidClient$18;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V
return-void
.end method