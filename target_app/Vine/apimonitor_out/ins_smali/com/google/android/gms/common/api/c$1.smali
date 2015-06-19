.class  Lcom/google/android/gms/common/api/c$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/c$a;
.field final synthetic Eh:Lcom/google/android/gms/common/api/c;
.method constructor <init>(Lcom/google/android/gms/common/api/c;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/c$1;->Eh:Lcom/google/android/gms/common/api/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/c$c;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/c$1;->Eh:Lcom/google/android/gms/common/api/c;
iget-object v0, v0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method