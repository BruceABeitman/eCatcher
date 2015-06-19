.class  Lcom/twidroid/UberSocialProfile$16;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
iput-object p2, p0, Lcom/twidroid/UberSocialProfile$16;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->ac(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$16;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->n(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->ae(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$16$1;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$16$1;-><init>(Lcom/twidroid/UberSocialProfile$16;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_21
:try_end_21
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_28
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Lcom/twidroid/UberSocialProfile;Z)Z
return-void
:catch_28
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
const v3, 0x7f0c0036
invoke-virtual {v2, v3}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->g(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$16;->b:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->af(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/twidroid/UberSocialProfile$16$2;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$16$2;-><init>(Lcom/twidroid/UberSocialProfile$16;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_21
.end method