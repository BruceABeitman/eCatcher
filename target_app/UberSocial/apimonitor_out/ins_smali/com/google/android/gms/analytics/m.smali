.class public Lcom/google/android/gms/analytics/m;
.super Lcom/google/android/gms/analytics/j;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/analytics/j;-><init>()V
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->J:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
const-string v0, "&t"
const-string v1, "timing"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/analytics/m;-><init>()V
invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/m;
invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/analytics/m;->a(J)Lcom/google/android/gms/analytics/m;
invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/m;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/m;
return-void
.end method
.method public a(J)Lcom/google/android/gms/analytics/m;
.registers 5
const-string v0, "&utt"
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/m;
.registers 3
const-string v0, "&utv"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public bridge synthetic a()Ljava/util/Map;
.registers 2
invoke-super {p0}, Lcom/google/android/gms/analytics/j;->a()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/m;
.registers 3
const-string v0, "&utc"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/google/android/gms/analytics/m;
.registers 3
const-string v0, "&utl"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method