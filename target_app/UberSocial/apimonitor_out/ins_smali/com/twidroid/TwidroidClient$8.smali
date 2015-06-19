.class  Lcom/twidroid/TwidroidClient$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/view/Display;
.field final synthetic b:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/view/Display;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/TwidroidClient$8;->b:Lcom/twidroid/TwidroidClient;
iput-object p2, p0, Lcom/twidroid/TwidroidClient$8;->a:Landroid/view/Display;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/TwidroidClient$8;->b:Lcom/twidroid/TwidroidClient;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$8;->a:Landroid/view/Display;
invoke-static {v0, v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;Landroid/view/Display;)V
return-void
.end method