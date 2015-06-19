.class  Lcom/twidroid/UberSocialProfile$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v2}, Lcom/twidroid/UberSocialProfile;->o(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$2;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v2}, Lcom/twidroid/UberSocialProfile;->p(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
const-string v3, "profile"
new-instance v4, Lcom/twidroid/UberSocialProfile$2$1;
invoke-direct {v4, p0}, Lcom/twidroid/UberSocialProfile$2$1;-><init>(Lcom/twidroid/UberSocialProfile$2;)V
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/UberSocialProfile;->a(Ljava/lang/String;ILjava/lang/String;Lcom/twidroid/activity/aa;)V
return-void
.end method