.class  Lcom/twidroid/TwidroidClient$7;
.super Lcom/twidroid/net/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$7;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Lcom/twidroid/net/c/c;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 3
invoke-virtual {p1}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method
.method public a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
.registers 3
invoke-virtual {p1}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method
.method public b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/TwidroidClient$7;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/twidroid/d/v;->a(Landroid/location/Address;)V
invoke-virtual {p1}, Lcom/twidroid/net/c/a;->a()V
return-void
.end method