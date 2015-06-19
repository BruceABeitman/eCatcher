.class abstract Lcom/google/android/gms/internal/km$a;
.super Lcom/google/android/gms/plus/Plus$a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/km$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/km$a;-><init>()V
return-void
.end method
.method public an(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/km$a$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/km$a$1;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$a;->an(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/Moments$LoadMomentsResult;
move-result-object v0
return-object v0
.end method