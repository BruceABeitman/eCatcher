.class public final Lcom/instagram/android/m/a/a;
.super Lcom/instagram/android/m/a/c;
.source "SurfaceViewVideoPlayer.java"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.field private g:Landroid/view/ViewGroup;
.field private h:Landroid/view/SurfaceView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/m/a/c;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/m/a/a;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
iget-object v0, p0, Lcom/instagram/android/m/a/a;->g:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iput-object v2, p0, Lcom/instagram/android/m/a/a;->g:Landroid/view/ViewGroup;
iput-object v2, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
return-void
.end method
.method public final a(Landroid/widget/FrameLayout;)V
.registers 5
const/4 v2, -0x1
iput-object p1, p0, Lcom/instagram/android/m/a/a;->g:Landroid/view/ViewGroup;
new-instance v0, Lcom/instagram/creation/video/ui/o;
iget-object v1, p0, Lcom/instagram/android/m/a/a;->g:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/creation/video/ui/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
iget-object v0, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
iget-object v0, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
const/4 v1, 0x3
invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V
iget-object v0, p0, Lcom/instagram/android/m/a/a;->g:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/instagram/android/m/a/a;->h:Landroid/view/SurfaceView;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
return-void
.end method
.method protected final b()V
.registers 1
return-void
.end method
.method protected final c()V
.registers 1
return-void
.end method
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/m/a/a;->a:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
return-void
.end method
.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 2
return-void
.end method
.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 2
return-void
.end method