.class public Lcom/admarvel/android/ads/w$a;
.super Landroid/widget/Button;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/w;
.method public constructor <init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/w$a;->a:Lcom/admarvel/android/ads/w;
invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
new-instance v0, Lcom/admarvel/android/ads/w$a$a;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/w$a$a;-><init>(Lcom/admarvel/android/ads/w$a;Landroid/graphics/drawable/Drawable;)V
invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method