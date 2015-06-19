.class  Lcom/admarvel/android/ads/f$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnErrorListener;
.field final synthetic a:Lcom/admarvel/android/ads/f;
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 7
const/4 v2, 0x1
const/4 v1, -0x1
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;I)I
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->b(Lcom/admarvel/android/ads/f;I)I
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/f;->d(Lcom/admarvel/android/ads/f;Z)Z
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->d()V
:cond_1f
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0}, Lcom/admarvel/android/ads/f;->h(Lcom/admarvel/android/ads/f;)Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->c()V
:cond_2c
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0}, Lcom/admarvel/android/ads/f;->i(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnErrorListener;
move-result-object v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0}, Lcom/admarvel/android/ads/f;->i(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnErrorListener;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/f$3;->a:Lcom/admarvel/android/ads/f;
invoke-static {v1}, Lcom/admarvel/android/ads/f;->d(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer;
move-result-object v1
invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
move-result v0
if-eqz v0, :cond_46
:cond_46
return v2
.end method