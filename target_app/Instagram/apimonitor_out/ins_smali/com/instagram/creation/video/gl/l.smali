.class final Lcom/instagram/creation/video/gl/l;
.super Ljava/lang/Object;
.source "GLRenderContext.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/instagram/creation/video/gl/j;
.method constructor <init>(Lcom/instagram/creation/video/gl/j;I)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;
const/16 v0, 0x280
iput v0, p0, Lcom/instagram/creation/video/gl/l;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget v0, p0, Lcom/instagram/creation/video/gl/l;->a:I
iget-object v1, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;
invoke-static {v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;)I
move-result v1
if-eq v0, v1, :cond_1c
iget-object v0, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;
iget v1, p0, Lcom/instagram/creation/video/gl/l;->a:I
invoke-static {v0, v1}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/j;I)I
iget-object v0, p0, Lcom/instagram/creation/video/gl/l;->b:Lcom/instagram/creation/video/gl/j;
invoke-static {v0}, Lcom/instagram/creation/video/gl/j;->b(Lcom/instagram/creation/video/gl/j;)Lcom/instagram/creation/video/gl/p;
move-result-object v0
iget v1, p0, Lcom/instagram/creation/video/gl/l;->a:I
invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/p;->b(I)V
:cond_1c
return-void
.end method