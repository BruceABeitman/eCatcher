.class public Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V
invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->vD:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
const-string v0, "&t"
const-string v1, "social"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-void
.end method
.method public bridge synthetic build()Ljava/util/Map;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.registers 3
const-string v0, "&sa"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setNetwork(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.registers 3
const-string v0, "&sn"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setTarget(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;
.registers 3
const-string v0, "&st"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method