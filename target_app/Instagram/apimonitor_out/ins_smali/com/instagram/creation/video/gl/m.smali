.class final Lcom/instagram/creation/video/gl/m;
.super Ljava/lang/Object;
.source "GLRenderContext.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/gl/i;
.field final synthetic b:Lcom/instagram/creation/video/gl/j;
.method constructor <init>(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/i;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/gl/m;->b:Lcom/instagram/creation/video/gl/j;
iput-object p2, p0, Lcom/instagram/creation/video/gl/m;->a:Lcom/instagram/creation/video/gl/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/gl/m;->b:Lcom/instagram/creation/video/gl/j;
iget-object v1, p0, Lcom/instagram/creation/video/gl/m;->a:Lcom/instagram/creation/video/gl/i;
invoke-static {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;Lcom/instagram/creation/video/gl/g;)V
return-void
.end method