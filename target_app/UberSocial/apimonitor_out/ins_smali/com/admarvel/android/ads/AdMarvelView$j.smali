.class  Lcom/admarvel/android/ads/AdMarvelView$j;
.super Ljava/lang/Object;
.source "SourceFile"
.method static a(Landroid/app/Activity;)V
.registers 3
const/high16 v1, 0x100
invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
return-void
.end method