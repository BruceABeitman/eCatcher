.class  Lcom/twidroid/UberSocialProfile$8;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 5
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->I(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->H(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/UberSocialProfile;->d(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
iput p1, v1, Lcom/twidroid/UberSocialProfile;->e:I
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->J(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->K(Lcom/twidroid/UberSocialProfile;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$8;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->finish()V
invoke-virtual {p0}, Lcom/twidroid/UberSocialProfile$8;->dismiss()V
return-void
.end method