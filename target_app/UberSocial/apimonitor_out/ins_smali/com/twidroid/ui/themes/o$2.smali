.class final Lcom/twidroid/ui/themes/o$2;
.super Lcom/twidroid/ui/themes/q;
.source "SourceFile"
.field final synthetic a:Landroid/os/Handler;
.field final synthetic b:Landroid/app/ProgressDialog;
.field final synthetic c:Lcom/twidroid/UberSocialApplication;
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;Lcom/twidroid/UberSocialApplication;Ljava/lang/String;)V
.registers 7
iput-object p3, p0, Lcom/twidroid/ui/themes/o$2;->a:Landroid/os/Handler;
iput-object p4, p0, Lcom/twidroid/ui/themes/o$2;->b:Landroid/app/ProgressDialog;
iput-object p5, p0, Lcom/twidroid/ui/themes/o$2;->c:Lcom/twidroid/UberSocialApplication;
iput-object p6, p0, Lcom/twidroid/ui/themes/o$2;->d:Ljava/lang/String;
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/themes/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public a(Lcom/twidroid/ui/themes/q;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/ui/themes/o$2;->a:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ui/themes/o$2$2;
invoke-direct {v1, p0}, Lcom/twidroid/ui/themes/o$2$2;-><init>(Lcom/twidroid/ui/themes/o$2;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public a(Lcom/twidroid/ui/themes/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
iget-object v6, p0, Lcom/twidroid/ui/themes/o$2;->a:Landroid/os/Handler;
new-instance v0, Lcom/twidroid/ui/themes/o$2$1;
move-object v1, p0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/twidroid/ui/themes/o$2$1;-><init>(Lcom/twidroid/ui/themes/o$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/ui/themes/q;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method