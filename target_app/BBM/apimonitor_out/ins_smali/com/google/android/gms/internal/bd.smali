.class public final Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
.registers 6
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_25
new-instance v2, Ljava/util/ArrayList;
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_10
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_20
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_20
invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
:goto_24
return-object v0
:cond_25
const/4 v0, 0x0
goto :goto_24
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/cn;Ljava/lang/String;ZLjava/util/List;)V
.registers 11
if-eqz p4, :cond_62
const-string v0, "1"
move-object v1, v0
:goto_5
invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v3, "@gw_adlocid@"
invoke-virtual {v0, v3, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_adnetrefresh@"
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_qdata@"
iget-object v4, p2, Lcom/google/android/gms/internal/cn;->pf:Lcom/google/android/gms/internal/ay;
iget-object v4, v4, Lcom/google/android/gms/internal/ay;->mw:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_sdkver@"
invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_sessid@"
sget-object v4, Lcom/google/android/gms/internal/cp;->pu:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_seqnum@"
iget-object v4, p2, Lcom/google/android/gms/internal/cn;->of:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v3, p2, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;
if-eqz v3, :cond_59
const-string v3, "@gw_adnetid@"
iget-object v4, p2, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;
iget-object v4, v4, Lcom/google/android/gms/internal/ax;->mm:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "@gw_allocid@"
iget-object v4, p2, Lcom/google/android/gms/internal/cn;->mM:Lcom/google/android/gms/internal/ax;
iget-object v4, v4, Lcom/google/android/gms/internal/ax;->mo:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_59
new-instance v3, Lcom/google/android/gms/internal/cy;
invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/google/android/gms/internal/cy;->start()V
goto :goto_9
:cond_62
const-string v0, "0"
move-object v1, v0
goto :goto_5
:cond_66
return-void
.end method