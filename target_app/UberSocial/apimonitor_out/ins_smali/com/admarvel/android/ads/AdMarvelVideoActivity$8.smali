.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$8;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$8;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->onUserInteraction()V
:cond_b
const/4 v0, 0x0
return v0
.end method