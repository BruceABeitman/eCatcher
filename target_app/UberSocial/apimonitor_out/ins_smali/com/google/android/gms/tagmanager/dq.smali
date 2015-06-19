.class abstract Lcom/google/android/gms/tagmanager/dq;
.super Lcom/google/android/gms/tagmanager/cb;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cb;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/dz;Ljava/util/Map;)Z
.registers 7
invoke-static {p1}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;
move-result-object v2
if-eq v0, v2, :cond_14
invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;
move-result-object v2
if-ne v1, v2, :cond_16
:cond_14
const/4 v0, 0x0
:goto_15
return v0
:cond_16
invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/dq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
move-result v0
goto :goto_15
.end method
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
.end method