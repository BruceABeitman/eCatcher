.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/ref/WeakReference;
move-result-object v0
if-eqz v0, :cond_be
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/ad;
if-eqz v0, :cond_be
instance-of v2, v0, Landroid/widget/LinearLayout;
if-eqz v2, :cond_be
if-eqz v0, :cond_91
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
move-result v2
if-eqz v2, :cond_91
move v2, v1
:goto_26
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v1
if-ge v2, v1, :cond_91
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
instance-of v1, v1, Lcom/admarvel/android/ads/ad$d;
if-eqz v1, :cond_8d
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/ad$d;
if-eqz v1, :cond_8d
iget-object v3, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;
const-string v4, "done"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_8d
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/ad$d;->setClickable(Z)V
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/ad$d;->setEnabled(Z)V
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/ad$d;->getChildAt(I)Landroid/view/View;
move-result-object v3
instance-of v3, v3, Landroid/widget/ImageView;
if-eqz v3, :cond_8d
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
move-result-object v3
if-eqz v3, :cond_74
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
move-result-object v3
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c()Z
move-result v3
if-eqz v3, :cond_74
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
move-result-object v3
invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V
:cond_74
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/ad$d;->getChildAt(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v3
if-eqz v3, :cond_8d
invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v3
const/16 v4, 0xff
invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V
:cond_8d
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_26
:cond_91
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
move-result-object v0
if-eqz v0, :cond_be
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->h(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->i(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$4;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
:goto_be
:cond_be
:try_end_be
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_be} :catch_bf
return-void
:catch_bf
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_be
.end method