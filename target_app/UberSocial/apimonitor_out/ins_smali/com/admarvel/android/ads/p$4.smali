.class  Lcom/admarvel/android/ads/p$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.field final synthetic a:Lcom/admarvel/android/ads/p;
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;
invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/ads/p$4;->a:Lcom/admarvel/android/ads/p;
invoke-static {v0}, Lcom/admarvel/android/ads/p;->e(Lcom/admarvel/android/ads/p;)Lcom/admarvel/android/ads/p$a;
move-result-object v0
invoke-interface {v0}, Lcom/admarvel/android/ads/p$a;->k()V
:cond_11
return-void
.end method