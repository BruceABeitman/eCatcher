.class final Lcom/admarvel/android/ads/AdMarvelView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->l(Landroid/content/Context;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$1;->a:Landroid/app/Activity;
invoke-static {v0}, Lcom/admarvel/android/util/e;->c(Landroid/content/Context;)Lcom/admarvel/android/util/e;
return-void
.end method