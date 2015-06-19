.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$2;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;)I
.registers 5
iget v0, p1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->a:I
iget v1, p2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;->a:I
sub-int/2addr v0, v1
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;
check-cast p2, Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;
invoke-virtual {p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$2;->a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;Lcom/admarvel/android/ads/AdMarvelVideoActivity$g;)I
move-result v0
return v0
.end method