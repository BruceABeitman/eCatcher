.class final Lcom/instagram/creation/video/gl/n;
.super Ljava/lang/Object;
.source "GLRenderContext.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/gl/j;
.method constructor <init>(Lcom/instagram/creation/video/gl/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/gl/n;->a:Lcom/instagram/creation/video/gl/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/gl/n;->a:Lcom/instagram/creation/video/gl/j;
new-instance v1, Lcom/instagram/creation/video/gl/i;
iget-object v2, p0, Lcom/instagram/creation/video/gl/n;->a:Lcom/instagram/creation/video/gl/j;
invoke-static {v2}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;)I
move-result v2
invoke-direct {v1, v2}, Lcom/instagram/creation/video/gl/i;-><init>(I)V
invoke-static {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/g;)V
return-void
.end method