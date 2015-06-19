.class public abstract Lcom/instagram/creation/video/d/a;
.super Ljava/lang/Object;
.source "MediaDecoderManager.java"
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.field protected final a:Ljava/lang/Object;
.field protected b:Z
.field protected c:Landroid/os/Handler;
.field protected d:Lcom/instagram/creation/video/d/c;
.field protected e:Lcom/instagram/creation/b/a/a;
.field private f:Lcom/instagram/creation/video/d/b;
.method protected constructor <init>(Lcom/instagram/creation/video/d/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/d/a;->a:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/video/d/a;->b:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/d/a;->c:Landroid/os/Handler;
iput-object p1, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
return-void
.end method
.method public static a(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/k/a;)Lcom/instagram/creation/video/d/a;
.registers 6
new-instance v0, Lcom/instagram/creation/video/d/e;
new-instance v1, Lcom/instagram/creation/video/gl/j;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V
invoke-direct {v0, p0, v1, p1}, Lcom/instagram/creation/video/d/e;-><init>(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/k/a;)V
return-object v0
.end method
.method public abstract a()V
.end method
.method public final a(Landroid/graphics/SurfaceTexture;I)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->l()Lcom/instagram/creation/video/gl/j;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/video/gl/j;->a(Landroid/graphics/SurfaceTexture;I)V
new-instance v1, Ljava/lang/Thread;
invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/d/a;->e:Lcom/instagram/creation/b/a/a;
return-void
.end method
.method public final a(Lcom/instagram/creation/video/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/d/a;->d:Lcom/instagram/creation/video/d/c;
return-void
.end method
.method public abstract b()V
.end method
.method public abstract c()V
.end method
.method public abstract d()V
.end method
.method public abstract e()Z
.end method
.method public abstract f()V
.end method
.method public abstract g()Z
.end method
.method public final h()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->n()V
return-void
.end method
.method public final i()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->o()V
return-void
.end method
.method public final j()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/d/d;->p()V
return-void
.end method
.method public abstract k()Lcom/instagram/creation/video/d/d;
.end method
.method protected final l()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->a()V
:cond_9
return-void
.end method
.method protected final m()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->b()V
:cond_9
return-void
.end method
.method protected final n()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->c()V
:cond_9
return-void
.end method
.method protected final o()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->d()V
:cond_9
return-void
.end method
.method protected final p()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->e()V
:cond_9
return-void
.end method
.method protected final q()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/d/a;->f:Lcom/instagram/creation/video/d/b;
invoke-interface {v0}, Lcom/instagram/creation/video/d/b;->f()V
:cond_9
return-void
.end method