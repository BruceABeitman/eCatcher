.class public Lcom/instagram/creation/video/ui/LivePreviewTextureView;
.super Lcom/instagram/creation/video/widget/d;
.source "LivePreviewTextureView.java"
.field private a:Lcom/instagram/creation/video/ui/d;
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
.method protected final a()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->setClickable(Z)V
return-void
.end method
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;
invoke-interface {v0, p1, p2}, Lcom/instagram/creation/video/ui/d;->a(Landroid/graphics/SurfaceTexture;I)V
return-void
.end method
.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;
invoke-interface {v0}, Lcom/instagram/creation/video/ui/d;->a()V
const/4 v0, 0x1
return v0
.end method
.method public performClick()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;
invoke-interface {v0}, Lcom/instagram/creation/video/ui/d;->b()V
invoke-super {p0}, Lcom/instagram/creation/video/widget/d;->performClick()Z
move-result v0
return v0
.end method
.method public setDelegate(Lcom/instagram/creation/video/ui/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/ui/LivePreviewTextureView;->a:Lcom/instagram/creation/video/ui/d;
return-void
.end method