.class final Lcom/google/android/gms/internal/bc$5;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bd;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;
move-result-object v0
if-nez v0, :cond_c
const-string v0, "A GMSG tried to use a custom close button on something that wasn\'t an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
const-string v1, "1"
const-string v2, "custom_close"
invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cg;->j(Z)V
goto :goto_b
.end method