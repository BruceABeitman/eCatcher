.class abstract Lcom/google/android/gms/tagmanager/dg;
.super Lcom/google/android/gms/tagmanager/aj;
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public iy()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public u(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/dg;->w(Ljava/util/Map;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->ku()Lcom/google/android/gms/internal/d$a;
move-result-object v0
return-object v0
.end method
.method public abstract w(Ljava/util/Map;)V
.end method