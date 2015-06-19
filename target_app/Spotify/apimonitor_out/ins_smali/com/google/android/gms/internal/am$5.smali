.class final Lcom/google/android/gms/internal/am$5;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ao;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->d()Lcom/google/android/gms/internal/cc;
move-result-object v0
if-nez v0, :cond_c
const-string v0, "A GMSG tried to use a custom close button on something that wasn\'t an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
const-string v1, "1"
const-string v2, "custom_close"
invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cc;->a(Z)V
goto :goto_b
.end method