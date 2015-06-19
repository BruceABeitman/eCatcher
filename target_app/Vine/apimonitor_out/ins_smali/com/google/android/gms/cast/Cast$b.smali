.class abstract Lcom/google/android/gms/cast/Cast$b;
.super Lcom/google/android/gms/cast/Cast$a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$b;-><init>()V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$b;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
return-object v0
.end method
.method public d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
.registers 2
return-object p1
.end method