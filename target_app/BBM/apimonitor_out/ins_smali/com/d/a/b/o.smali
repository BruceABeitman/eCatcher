.class final Lcom/d/a/b/o;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"
.implements Ljava/lang/Runnable;
.field private final a:Lcom/d/a/b/i;
.field private final b:Landroid/graphics/Bitmap;
.field private final c:Lcom/d/a/b/k;
.field private final d:Landroid/os/Handler;
.method public constructor <init>(Lcom/d/a/b/i;Landroid/graphics/Bitmap;Lcom/d/a/b/k;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/d/a/b/o;->a:Lcom/d/a/b/i;
iput-object p2, p0, Lcom/d/a/b/o;->b:Landroid/graphics/Bitmap;
iput-object p3, p0, Lcom/d/a/b/o;->c:Lcom/d/a/b/k;
iput-object p4, p0, Lcom/d/a/b/o;->d:Landroid/os/Handler;
return-void
.end method
.method public final run()V
.registers 7
iget-object v0, p0, Lcom/d/a/b/o;->a:Lcom/d/a/b/i;
iget-object v0, v0, Lcom/d/a/b/i;->a:Lcom/d/a/b/g;
iget-boolean v0, v0, Lcom/d/a/b/g;->u:Z
if-eqz v0, :cond_17
const-string v0, "PostProcess image before displaying [%s]"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/d/a/b/o;->c:Lcom/d/a/b/k;
iget-object v3, v3, Lcom/d/a/b/k;->b:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_17
iget-object v0, p0, Lcom/d/a/b/o;->c:Lcom/d/a/b/k;
iget-object v0, v0, Lcom/d/a/b/k;->e:Lcom/d/a/b/d;
iget-object v0, v0, Lcom/d/a/b/d;->l:Lcom/d/a/b/e/a;
iget-object v1, p0, Lcom/d/a/b/o;->b:Landroid/graphics/Bitmap;
invoke-interface {v0}, Lcom/d/a/b/e/a;->a()Landroid/graphics/Bitmap;
move-result-object v0
iget-object v1, p0, Lcom/d/a/b/o;->d:Landroid/os/Handler;
new-instance v2, Lcom/d/a/b/c;
iget-object v3, p0, Lcom/d/a/b/o;->c:Lcom/d/a/b/k;
iget-object v4, p0, Lcom/d/a/b/o;->a:Lcom/d/a/b/i;
sget-object v5, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;
invoke-direct {v2, v0, v3, v4, v5}, Lcom/d/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/b/k;Lcom/d/a/b/i;Lcom/d/a/b/a/g;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method