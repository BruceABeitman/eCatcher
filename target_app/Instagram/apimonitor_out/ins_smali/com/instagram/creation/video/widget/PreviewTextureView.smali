.class public Lcom/instagram/creation/video/widget/PreviewTextureView;
.super Lcom/instagram/creation/video/widget/d;
.source "PreviewTextureView.java"
.field private a:Lcom/instagram/creation/video/gl/j;
.field private b:Lcom/instagram/creation/video/gl/y;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/video/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->a()V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->b()V
:cond_9
return-void
.end method
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.registers 6
new-instance v0, Lcom/instagram/creation/video/gl/j;
invoke-direct {v0, p1, p2}, Lcom/instagram/creation/video/gl/j;-><init>(Landroid/graphics/SurfaceTexture;I)V
iput-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;
iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-interface {v0, v1}, Lcom/instagram/creation/video/gl/y;->a(Lcom/instagram/creation/video/gl/j;)V
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;
iget-object v1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-interface {v0}, Lcom/instagram/creation/video/gl/y;->W()V
iput-object v2, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;
iget-object v0, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V
iput-object v2, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->a:Lcom/instagram/creation/video/gl/j;
const/4 v0, 0x1
return v0
.end method
.method public setDependent(Lcom/instagram/creation/video/gl/y;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/widget/PreviewTextureView;->b:Lcom/instagram/creation/video/gl/y;
return-void
.end method