.class  Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
.field private final b:Ljava/util/ArrayList;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
return-void
.end method
.method public a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 3
const/16 v0, 0x3f
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_12
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_e
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b(Ljava/lang/String;)V
return-void
:cond_12
const-string v0, ""
goto :goto_e
.end method
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_2c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;
invoke-virtual {v0, p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;->a(Ljava/lang/String;)V
:goto_27
return-void
:cond_28
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_2c
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->b:Ljava/util/ArrayList;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;
invoke-direct {v1, p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j$a;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_27
.end method
.method public b(Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/util/StringTokenizer;
const-string v1, "&"
invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:cond_7
:goto_7
invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z
move-result v1
if-eqz v1, :cond_34
invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_7
const/16 v2, 0x3d
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-gez v2, :cond_25
const-string v2, ""
invoke-virtual {p0, v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
:cond_25
const/4 v3, 0x0
invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v3, v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$j;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
:cond_34
return-void
.end method