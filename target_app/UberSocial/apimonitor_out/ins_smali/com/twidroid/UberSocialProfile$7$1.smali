.class  Lcom/twidroid/UberSocialProfile$7$1;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialProfile$7;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$7;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$7$1;->a:Lcom/twidroid/UberSocialProfile$7;
invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 5
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v0
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/twidroid/UberSocialProfile$7$1$1;
invoke-direct {v2, p0, p1}, Lcom/twidroid/UberSocialProfile$7$1$1;-><init>(Lcom/twidroid/UberSocialProfile$7$1;I)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/n;->a(Ljava/lang/Thread;)V
return-void
.end method