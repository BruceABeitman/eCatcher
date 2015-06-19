.class final Lcom/instagram/creation/video/l/l;
.super Ljava/lang/Object;
.source "VideoSessionUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/l/l;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V
invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V
iget-object v0, p0, Lcom/instagram/creation/video/l/l;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/instagram/creation/video/l/j;->e(Landroid/content/Context;)V
return-void
.end method