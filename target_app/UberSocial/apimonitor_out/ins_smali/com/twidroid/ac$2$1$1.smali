.class  Lcom/twidroid/ac$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ac$2$1;
.method constructor <init>(Lcom/twidroid/ac$2$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ac$2$1$1;->a:Lcom/twidroid/ac$2$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
:try_start_1
iget-object v0, p0, Lcom/twidroid/ac$2$1$1;->a:Lcom/twidroid/ac$2$1;
iget-object v0, v0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;
iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->n()V
iget-object v0, p0, Lcom/twidroid/ac$2$1$1;->a:Lcom/twidroid/ac$2$1;
iget-object v0, v0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;
iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->g(Lcom/twidroid/UberSocialProfile;Z)Z
:goto_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/ac$2$1$1;->a:Lcom/twidroid/ac$2$1;
iget-object v0, v0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;
iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
invoke-static {v0, v2}, Lcom/twidroid/UberSocialProfile;->h(Lcom/twidroid/UberSocialProfile;Z)Z
goto :goto_18
.end method