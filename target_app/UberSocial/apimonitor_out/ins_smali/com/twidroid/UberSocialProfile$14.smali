.class  Lcom/twidroid/UberSocialProfile$14;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ubermedia/b/k;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c0037
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method
.method public a(Landroid/net/Uri;Ljava/lang/String;IIZ)V
.registers 13
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->Z(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->aE()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0, p1, p2, p4, p3}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Landroid/net/Uri;Ljava/lang/String;II)V
:goto_15
return-void
:cond_16
new-instance v0, Lcom/twidroid/activity/r;
const/4 v3, 0x0
const/4 v5, 0x1
const/4 v6, 0x0
move-object v1, p1
move-object v2, p2
move-object v4, p2
invoke-direct/range {v0 .. v6}, Lcom/twidroid/activity/r;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v2}, Lcom/twidroid/UberSocialProfile;->aa(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/UberSocialProfile$14;->a:Lcom/twidroid/UberSocialProfile;
iget-object v3, v3, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
invoke-virtual {v1, v2, v0, v3}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/activity/r;Lcom/twidroid/model/twitter/User;)V
goto :goto_15
.end method