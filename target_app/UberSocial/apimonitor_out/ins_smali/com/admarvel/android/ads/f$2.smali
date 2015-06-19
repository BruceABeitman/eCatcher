.class  Lcom/admarvel/android/ads/f$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.field final synthetic a:Lcom/admarvel/android/ads/f;
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f$2;->a:Lcom/admarvel/android/ads/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/f$2;->a:Lcom/admarvel/android/ads/f;
iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/admarvel/android/ads/f$2;->a:Lcom/admarvel/android/ads/f;
iget-object v0, v0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->d()V
:cond_d
return-void
.end method