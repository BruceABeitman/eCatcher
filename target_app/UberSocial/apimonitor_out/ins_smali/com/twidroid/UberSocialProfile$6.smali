.class  Lcom/twidroid/UberSocialProfile$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$6;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$6;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$6;->a:Lcom/twidroid/UberSocialProfile;
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$6;->a:Lcom/twidroid/UberSocialProfile;
iget v2, v2, Lcom/twidroid/UberSocialProfile;->ac:I
invoke-static {v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;I)I
move-result v1
iput v1, v0, Lcom/twidroid/UberSocialProfile;->ac:I
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$6;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;)V
return-void
.end method