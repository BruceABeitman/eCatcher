.class final Lcom/bbm/util/p;
.super Lcom/bbm/j/k;
.source "ChannelCloudImageData.java"
.field final synthetic a:Z
.field final synthetic b:Lcom/bbm/ui/ObservingImageView;
.field final synthetic c:I
.field final synthetic d:I
.field final synthetic e:Lcom/bbm/util/b/d;
.field final synthetic f:Lcom/bbm/util/o;
.method constructor <init>(Lcom/bbm/util/o;ZLcom/bbm/ui/ObservingImageView;IILcom/bbm/util/b/d;)V
.registers 8
iput-object p1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iput-boolean p2, p0, Lcom/bbm/util/p;->a:Z
iput-object p3, p0, Lcom/bbm/util/p;->b:Lcom/bbm/ui/ObservingImageView;
iput p4, p0, Lcom/bbm/util/p;->c:I
iput p5, p0, Lcom/bbm/util/p;->d:I
iput-object p6, p0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 9
iget-boolean v0, p0, Lcom/bbm/util/p;->a:Z
if-eqz v0, :cond_1d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v1, v1, Lcom/bbm/util/o;->f:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->s(Ljava/lang/String;)Lcom/bbm/d/gd;
move-result-object v0
:goto_14
invoke-interface {v0}, Lcom/bbm/d/a/a;->c()Lcom/bbm/util/bh;
move-result-object v1
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_2e
:goto_1c
return-void
:cond_1d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v1, v1, Lcom/bbm/util/o;->f:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->u(Ljava/lang/String;)Lcom/bbm/d/fx;
move-result-object v0
goto :goto_14
:cond_2e
invoke-interface {v0}, Lcom/bbm/d/a/a;->c()Lcom/bbm/util/bh;
move-result-object v1
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_7f
iget-object v1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-boolean v2, p0, Lcom/bbm/util/p;->a:Z
if-eqz v2, :cond_7a
check-cast v0, Lcom/bbm/d/gd;
iget-object v0, v0, Lcom/bbm/d/gd;->b:Ljava/lang/String;
:goto_40
iput-object v0, v1, Lcom/bbm/util/o;->d:Ljava/lang/String;
:goto_42
iget-object v0, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v0, v0, Lcom/bbm/util/o;->h:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/util/cr;
if-eqz v3, :cond_88
new-instance v0, Lcom/bbm/util/q;
iget-object v1, p0, Lcom/bbm/util/p;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getContext()Landroid/content/Context;
move-result-object v2
iget v4, p0, Lcom/bbm/util/p;->c:I
iget v5, p0, Lcom/bbm/util/p;->d:I
iget-object v6, p0, Lcom/bbm/util/p;->e:Lcom/bbm/util/b/d;
move-object v1, p0
move-object v7, v3
invoke-direct/range {v0 .. v7}, Lcom/bbm/util/q;-><init>(Lcom/bbm/util/p;Landroid/content/Context;Lcom/bbm/util/cr;IILcom/bbm/util/b/d;Lcom/bbm/util/cr;)V
sget-object v1, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v4, v4, Lcom/bbm/util/o;->d:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/ez;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
iget-object v1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v2, v1, Lcom/bbm/util/o;->k:Ljava/lang/ref/WeakReference;
goto :goto_1c
:cond_7a
check-cast v0, Lcom/bbm/d/fx;
iget-object v0, v0, Lcom/bbm/d/fx;->b:Ljava/lang/String;
goto :goto_40
:cond_7f
iget-object v0, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v1, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
iget-object v1, v1, Lcom/bbm/util/o;->c:Ljava/lang/String;
iput-object v1, v0, Lcom/bbm/util/o;->d:Ljava/lang/String;
goto :goto_42
:cond_88
invoke-virtual {p0}, Lcom/bbm/util/p;->e()V
iget-object v0, p0, Lcom/bbm/util/p;->f:Lcom/bbm/util/o;
const/4 v1, 0x0
iput-object v1, v0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;
goto :goto_1c
.end method