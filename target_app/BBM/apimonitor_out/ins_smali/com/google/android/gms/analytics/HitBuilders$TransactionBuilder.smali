.class public Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V
invoke-static {}, Lcom/google/android/gms/analytics/u;->bR()Lcom/google/android/gms/analytics/u;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/u$a;->sR:Lcom/google/android/gms/analytics/u$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V
const-string v0, "&t"
const-string v1, "transaction"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-void
.end method
.method public bridge synthetic build()Ljava/util/Map;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public setAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 3
const-string v0, "&ta"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 3
const-string v0, "&cu"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setRevenue(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 5
const-string v0, "&tr"
invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setShipping(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 5
const-string v0, "&ts"
invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setTax(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 5
const-string v0, "&tt"
invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method
.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;
.registers 3
const-string v0, "&ti"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
return-object p0
.end method