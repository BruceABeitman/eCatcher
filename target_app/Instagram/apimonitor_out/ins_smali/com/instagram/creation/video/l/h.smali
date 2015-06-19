.class public final Lcom/instagram/creation/video/l/h;
.super Ljava/lang/Object;
.source "VideoPreviewDelegate.java"
.implements Lcom/instagram/creation/video/ui/d;
.field private a:Landroid/content/Context;
.field private b:Lcom/instagram/creation/video/d/a;
.field private c:Lcom/instagram/creation/video/ui/a/a;
.field private d:Z
.field private e:Lcom/instagram/creation/b/a/a;
.field private f:I
.field private g:Lcom/instagram/creation/video/d/c;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/a/a;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/video/l/h;->f:I
iput-object p1, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;
iput-boolean p3, p0, Lcom/instagram/creation/video/l/h;->d:Z
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->e:Lcom/instagram/creation/b/a/a;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/l/h;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/l/h;->f:I
return v0
.end method
.method static synthetic c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->g:Lcom/instagram/creation/video/d/c;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/creation/video/l/h;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/l/h;->d:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->j()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
return-void
.end method
.method public final a(I)V
.registers 4
iput p1, p0, Lcom/instagram/creation/video/l/h;->f:I
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v1}, Lcom/instagram/creation/video/d/a;->k()Lcom/instagram/creation/video/d/d;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/creation/video/d/d;->a()Lcom/instagram/creation/video/j/j;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/creation/video/j/j;->a(Lcom/instagram/creation/video/e/c;)V
:cond_19
return-void
.end method
.method public final a(Landroid/graphics/SurfaceTexture;I)V
.registers 5
iget-object v1, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;
check-cast v0, Lcom/instagram/creation/video/k/a;
invoke-static {v1, v0}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/video/d/b;Lcom/instagram/creation/video/k/a;)Lcom/instagram/creation/video/d/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->a:Landroid/content/Context;
check-cast v0, Lcom/instagram/creation/b/a/e;
new-instance v1, Lcom/instagram/creation/video/l/i;
invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/video/l/i;-><init>(Lcom/instagram/creation/video/l/h;Landroid/graphics/SurfaceTexture;I)V
invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/l/h;->e:Lcom/instagram/creation/b/a/a;
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/b/a/a;)V
:cond_b
return-void
.end method
.method public final a(Lcom/instagram/creation/video/d/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/l/h;->g:Lcom/instagram/creation/video/d/c;
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/d/a;->a(Lcom/instagram/creation/video/d/c;)V
:cond_b
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->a()V
return-void
.end method
.method public final b(Landroid/graphics/SurfaceTexture;I)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/video/d/a;->a(Landroid/graphics/SurfaceTexture;I)V
:cond_9
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/a/a;->d()V
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->c:Lcom/instagram/creation/video/ui/a/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/ui/a/a;->e()V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->h()V
:cond_9
return-void
.end method
.method public final e()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->i()V
:cond_9
return-void
.end method
.method public final f()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->e()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final g()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->f()V
:cond_9
return-void
.end method
.method public final h()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->c()V
:cond_9
return-void
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->d()V
:cond_9
return-void
.end method
.method public final j()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->b()V
:cond_9
return-void
.end method
.method public final k()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->j()V
:cond_9
return-void
.end method
.method public final l()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/video/l/h;->b:Lcom/instagram/creation/video/d/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->g()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method