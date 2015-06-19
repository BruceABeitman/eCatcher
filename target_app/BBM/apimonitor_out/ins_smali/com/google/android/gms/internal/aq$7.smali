.class final Lcom/google/android/gms/internal/aq$7;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 7
const-string v0, "tx"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "ty"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v2, "td"
invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:try_start_18
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->bc()Lcom/google/android/gms/internal/l;
move-result-object v3
if-eqz v3, :cond_31
invoke-virtual {v3}, Lcom/google/android/gms/internal/l;->y()Lcom/google/android/gms/internal/h;
move-result-object v3
invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/h;->a(III)V
:cond_31
:try_end_31
.catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v0
const-string v0, "Could not parse touch parameters from gmsg."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_31
.end method