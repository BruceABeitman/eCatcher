.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
move-result-object v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->b(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
move-result v0
if-eqz v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I
move-result v0
if-nez v0, :cond_69
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->f()I
move-result v0
:goto_27
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget v2, v2, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
int-to-long v4, v0
invoke-static {v3, v4, v5}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;J)I
move-result v0
sub-int v0, v2, v0
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Landroid/widget/TextView;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;ILandroid/widget/TextView;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
move-result-object v2
invoke-virtual {v2}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I
move-result v2
int-to-long v2, v2
invoke-static {v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;J)I
move-result v1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;I)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->g()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;Z)Z
goto :goto_10
:cond_69
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)Lcom/admarvel/android/ads/p;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getCurrentPosition()I
move-result v0
goto :goto_27
.end method