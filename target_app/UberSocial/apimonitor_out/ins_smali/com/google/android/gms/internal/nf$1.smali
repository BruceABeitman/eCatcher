.class  Lcom/google/android/gms/internal/nf$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/a/d;
.field final synthetic a:Lcom/google/android/gms/common/api/Status;
.field final synthetic b:Lcom/google/android/gms/internal/nf;
.method constructor <init>(Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/nf$1;->b:Lcom/google/android/gms/internal/nf;
iput-object p2, p0, Lcom/google/android/gms/internal/nf$1;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/nf$1;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/games/a/b;
.registers 3
new-instance v0, Lcom/google/android/gms/games/a/b;
const/16 v1, 0xe
invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/games/a/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
return-object v0
.end method
.method public d()V
.registers 1
return-void
.end method