.class final Lcom/google/android/gms/internal/aq$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->ba()Lcom/google/android/gms/internal/bo;
move-result-object v0
if-nez v0, :cond_c
const-string v0, "A GMSG tried to close something that wasn\'t an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->close()V
goto :goto_b
.end method