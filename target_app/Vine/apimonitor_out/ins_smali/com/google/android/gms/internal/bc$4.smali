.class final Lcom/google/android/gms/internal/bc$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bd;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;
move-result-object v0
if-nez v0, :cond_c
const-string v0, "A GMSG tried to close something that wasn\'t an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->close()V
goto :goto_b
.end method