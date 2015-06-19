.class abstract Lcom/google/android/gms/appstate/AppStateManager$c;
.super Lcom/google/android/gms/appstate/AppStateManager$a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/appstate/AppStateManager$c;-><init>()V
return-void
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$c;->h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
move-result-object v0
return-object v0
.end method
.method public h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.registers 3
new-instance v0, Lcom/google/android/gms/appstate/AppStateManager$c$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$c$1;-><init>(Lcom/google/android/gms/appstate/AppStateManager$c;Lcom/google/android/gms/common/api/Status;)V
return-object v0
.end method