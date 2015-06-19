.class public final Lcom/instagram/android/m/a/b;
.super Lcom/instagram/android/m/a/c;
.source "TextureViewVideoPlayer.java"
.implements Landroid/view/TextureView$SurfaceTextureListener;
.field private g:Landroid/view/ViewGroup;
.field private h:Landroid/view/TextureView;
.field private i:Landroid/graphics/SurfaceTexture;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/m/a/c;-><init>()V
return-void
.end method
.method private o()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/m/a/b;->i:Landroid/graphics/SurfaceTexture;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/m/a/b;->i:Landroid/graphics/SurfaceTexture;
invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/m/a/b;->i:Landroid/graphics/SurfaceTexture;
:cond_c
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/m/a/b;->g:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iput-object v2, p0, Lcom/instagram/android/m/a/b;->g:Landroid/view/ViewGroup;
iput-object v2, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
return-void
.end method
.method public final a(Landroid/widget/FrameLayout;)V
.registers 5
const/4 v2, -0x1
iput-object p1, p0, Lcom/instagram/android/m/a/b;->g:Landroid/view/ViewGroup;
new-instance v0, Lcom/instagram/creation/video/ui/p;
iget-object v1, p0, Lcom/instagram/android/m/a/b;->g:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/creation/video/ui/p;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
iget-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
iget-object v0, p0, Lcom/instagram/android/m/a/b;->g:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
return-void
.end method
.method protected final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/m/a/b;->a:Landroid/media/MediaPlayer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
invoke-direct {p0}, Lcom/instagram/android/m/a/b;->o()V
return-void
.end method
.method protected final c()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/m/a/b;->o()V
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/instagram/android/m/a/b;->h:Landroid/view/TextureView;
invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;
move-result-object v0
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_20
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v0
:cond_20
invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V
:cond_23
invoke-super {p0}, Lcom/instagram/android/m/a/c;->d()V
return-void
.end method
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.registers 6
new-instance v0, Landroid/view/Surface;
invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
iget-object v1, p0, Lcom/instagram/android/m/a/b;->a:Landroid/media/MediaPlayer;
invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
return-void
.end method
.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.registers 3
iput-object p1, p0, Lcom/instagram/android/m/a/b;->i:Landroid/graphics/SurfaceTexture;
const/4 v0, 0x0
return v0
.end method
.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.registers 4
return-void
.end method
.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.registers 2
return-void
.end method