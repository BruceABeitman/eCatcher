.class abstract Lcom/google/android/gms/cast/Cast$c;
.super Lcom/google/android/gms/cast/Cast$a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$c;-><init>()V
return-void
.end method
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$c;->h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
move-result-object v0
return-object v0
.end method
.method public h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/Cast$c$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/Cast$c$1;-><init>(Lcom/google/android/gms/cast/Cast$c;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method