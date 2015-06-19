.class abstract Lcom/google/android/gms/tagmanager/df;
.super Lcom/google/android/gms/tagmanager/aj;
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public lc()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/df;->y(Ljava/util/Map;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Lcom/google/android/gms/internal/d$a;
move-result-object v0
return-object v0
.end method
.method public abstract y(Ljava/util/Map;)V
.end method