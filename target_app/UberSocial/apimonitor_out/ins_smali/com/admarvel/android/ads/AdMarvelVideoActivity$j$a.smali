.class public Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:Ljava/lang/String;
.field public b:Ljava/util/List;
.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->c:Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;
invoke-static {p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->b:Ljava/util/List;
invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method