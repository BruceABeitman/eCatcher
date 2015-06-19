.class final Lcom/cropimage/o;
.super Lcom/bbm/ui/activities/ajz;
.source "Util.java"
.implements Ljava/lang/Runnable;
.field final a:Lcom/bbm/ui/activities/ajy;
.field final b:Landroid/app/ProgressDialog;
.field private final c:Ljava/lang/Runnable;
.field private final d:Landroid/os/Handler;
.field private final e:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/bbm/ui/activities/ajy;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
.registers 6
invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V
new-instance v0, Lcom/cropimage/p;
invoke-direct {v0, p0}, Lcom/cropimage/p;-><init>(Lcom/cropimage/o;)V
iput-object v0, p0, Lcom/cropimage/o;->e:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/cropimage/o;->a:Lcom/bbm/ui/activities/ajy;
iput-object p3, p0, Lcom/cropimage/o;->b:Landroid/app/ProgressDialog;
iput-object p2, p0, Lcom/cropimage/o;->c:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/cropimage/o;->a:Lcom/bbm/ui/activities/ajy;
invoke-virtual {v0, p0}, Lcom/bbm/ui/activities/ajy;->a(Lcom/bbm/ui/activities/aka;)V
iput-object p4, p0, Lcom/cropimage/o;->d:Landroid/os/Handler;
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/cropimage/o;->e:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
iget-object v0, p0, Lcom/cropimage/o;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/cropimage/o;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/cropimage/o;->b:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method
.method public final d(Lcom/bbm/ui/activities/ajy;)V
.registers 3
iget-object v0, p0, Lcom/cropimage/o;->b:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/cropimage/o;->c:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_d
iget-object v0, p0, Lcom/cropimage/o;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/cropimage/o;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Lcom/cropimage/o;->d:Landroid/os/Handler;
iget-object v2, p0, Lcom/cropimage/o;->e:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
throw v0
.end method