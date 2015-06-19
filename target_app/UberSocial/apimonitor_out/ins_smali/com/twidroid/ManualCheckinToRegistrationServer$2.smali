.class  Lcom/twidroid/ManualCheckinToRegistrationServer$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialApplication;
.field final synthetic b:Landroid/os/Handler;
.field final synthetic c:Lcom/twidroid/ManualCheckinToRegistrationServer;
.method constructor <init>(Lcom/twidroid/ManualCheckinToRegistrationServer;Lcom/twidroid/UberSocialApplication;Landroid/os/Handler;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->c:Lcom/twidroid/ManualCheckinToRegistrationServer;
iput-object p2, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->a:Lcom/twidroid/UberSocialApplication;
iput-object p3, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->b:Landroid/os/Handler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->c:Lcom/twidroid/ManualCheckinToRegistrationServer;
invoke-virtual {v0}, Lcom/twidroid/ManualCheckinToRegistrationServer;->getBaseContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
new-instance v3, Lcom/twidroid/ManualCheckinToRegistrationServer$2$1;
invoke-direct {v3, p0}, Lcom/twidroid/ManualCheckinToRegistrationServer$2$1;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/net/c/w;->a(Landroid/content/Context;Lcom/twidroid/b/a/b;Lcom/twidroid/d/v;Lcom/twidroid/v;)V
iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->bD()V
iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->b:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;
invoke-direct {v1, p0}, Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_2d
.catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_2d} :catch_2e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_3a
:goto_2d
return-void
:catch_2e
move-exception v0
iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->b:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ManualCheckinToRegistrationServer$2$3;
invoke-direct {v1, p0}, Lcom/twidroid/ManualCheckinToRegistrationServer$2$3;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2d
:catch_3a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->b:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ManualCheckinToRegistrationServer$2$4;
invoke-direct {v1, p0}, Lcom/twidroid/ManualCheckinToRegistrationServer$2$4;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2d
.end method