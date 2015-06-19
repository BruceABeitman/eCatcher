.class public Lcom/google/android/gms/analytics/j;
.super Ljava/lang/Object;
.field private a:Ljava/util/Map;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/util/Map;
return-void
.end method
.method public a(IF)Lcom/google/android/gms/analytics/j;
.registers 5
invoke-static {p1}, Lcom/google/android/gms/analytics/ba;->b(I)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public a(ILjava/lang/String;)Lcom/google/android/gms/analytics/j;
.registers 4
invoke-static {p1}, Lcom/google/android/gms/analytics/ba;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
.registers 5
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->a:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_10
return-object p0
:cond_11
const-string v0, " HitBuilder.set() called with a null paramName."
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V
goto :goto_10
.end method
.method public final a(Ljava/util/Map;)Lcom/google/android/gms/analytics/j;
.registers 4
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->b:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
if-nez p1, :cond_c
:goto_b
return-object p0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/util/Map;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
goto :goto_b
.end method
.method public a()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/util/Map;
return-object v0
.end method
.method public b()Lcom/google/android/gms/analytics/j;
.registers 3
const-string v0, "&sc"
const-string v1, "start"
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public b(Z)Lcom/google/android/gms/analytics/j;
.registers 4
const-string v0, "&ni"
invoke-static {p1}, Lcom/google/android/gms/analytics/ai;->a(Z)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method public d(Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
.registers 5
invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bm;->d:Lcom/google/android/gms/analytics/bm;
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Lcom/google/android/gms/analytics/bm;)V
invoke-static {p1}, Lcom/google/android/gms/analytics/ai;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_14
:goto_13
return-object p0
:cond_14
invoke-static {v0}, Lcom/google/android/gms/analytics/ai;->a(Ljava/lang/String;)Ljava/util/Map;
move-result-object v1
const-string v2, "&cc"
const-string v0, "utm_content"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&cm"
const-string v0, "utm_medium"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&cn"
const-string v0, "utm_campaign"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&cs"
const-string v0, "utm_source"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&ck"
const-string v0, "utm_term"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&ci"
const-string v0, "utm_id"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&gclid"
const-string v0, "gclid"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&dclid"
const-string v0, "dclid"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
const-string v2, "&gmob_t"
const-string v0, "gmob_t"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
goto :goto_13
.end method
.method protected e(Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
.registers 3
const-string v0, "&t"
invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/j;
return-object p0
.end method
.method protected f(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/j;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method