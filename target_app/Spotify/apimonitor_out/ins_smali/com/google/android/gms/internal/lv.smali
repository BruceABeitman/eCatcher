.class final Lcom/google/android/gms/internal/lv;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ly;
.field private a:Lcom/google/android/gms/internal/er;
.method public constructor <init>(Lcom/google/android/gms/internal/er;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/lv;->a:Lcom/google/android/gms/internal/er;
return-void
.end method
.method public final a(Z)V
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "isVisible"
if-eqz p1, :cond_16
const-string v0, "1"
:goto_b
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/lv;->a:Lcom/google/android/gms/internal/er;
const-string v2, "onAdVisibilityChanged"
invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
:cond_16
const-string v0, "0"
goto :goto_b
.end method