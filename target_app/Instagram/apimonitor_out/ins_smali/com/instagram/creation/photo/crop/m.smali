.class final Lcom/instagram/creation/photo/crop/m;
.super Lcom/instagram/creation/photo/crop/x;
.source "CropUtil.java"
.implements Ljava/lang/Runnable;
.field private final a:Lcom/instagram/creation/photo/crop/w;
.field private final b:Landroid/app/ProgressDialog;
.field private final c:Ljava/lang/Runnable;
.field private final d:Landroid/os/Handler;
.field private final e:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/instagram/creation/photo/crop/w;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
.registers 6
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/x;-><init>()V
new-instance v0, Lcom/instagram/creation/photo/crop/n;
invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/n;-><init>(Lcom/instagram/creation/photo/crop/m;)V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/m;->e:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/instagram/creation/photo/crop/m;->a:Lcom/instagram/creation/photo/crop/w;
iput-object p3, p0, Lcom/instagram/creation/photo/crop/m;->b:Landroid/app/ProgressDialog;
iput-object p2, p0, Lcom/instagram/creation/photo/crop/m;->c:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->a:Lcom/instagram/creation/photo/crop/w;
invoke-virtual {v0, p0}, Lcom/instagram/creation/photo/crop/w;->a(Lcom/instagram/creation/photo/crop/y;)V
iput-object p4, p0, Lcom/instagram/creation/photo/crop/m;->d:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/m;)Lcom/instagram/creation/photo/crop/w;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->a:Lcom/instagram/creation/photo/crop/w;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/creation/photo/crop/m;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->b:Landroid/app/ProgressDialog;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->e:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/m;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->b:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->b:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->c:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_d
iget-object v0, p0, Lcom/instagram/creation/photo/crop/m;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/m;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catchall_d
move-exception v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/m;->d:Landroid/os/Handler;
iget-object v2, p0, Lcom/instagram/creation/photo/crop/m;->e:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
throw v0
.end method