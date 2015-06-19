.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;
.field private final Dj:Lcom/google/android/gms/common/api/Api$b;
.field private final Dk:Lcom/google/android/gms/common/api/Api$c;
.field private final Dl:Ljava/util/ArrayList;
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->Dj:Lcom/google/android/gms/common/api/Api$b;
iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->Dk:Lcom/google/android/gms/common/api/Api$c;
new-instance v0, Ljava/util/ArrayList;
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dl:Ljava/util/ArrayList;
return-void
.end method
.method public eu()Lcom/google/android/gms/common/api/Api$b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dj:Lcom/google/android/gms/common/api/Api$b;
return-object v0
.end method
.method public ev()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dl:Ljava/util/ArrayList;
return-object v0
.end method
.method public ew()Lcom/google/android/gms/common/api/Api$c;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->Dk:Lcom/google/android/gms/common/api/Api$c;
return-object v0
.end method