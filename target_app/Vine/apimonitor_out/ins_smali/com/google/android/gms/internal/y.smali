.class  Lcom/google/android/gms/internal/y;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/aa;
.field private lc:Lcom/google/android/gms/internal/ey;
.method public constructor <init>(Lcom/google/android/gms/internal/ey;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/y;->lc:Lcom/google/android/gms/internal/ey;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ad;Z)V
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "isVisible"
if-eqz p2, :cond_16
const-string v0, "1"
:goto_b
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/y;->lc:Lcom/google/android/gms/internal/ey;
const-string v2, "onAdVisibilityChanged"
invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
:cond_16
const-string v0, "0"
goto :goto_b
.end method