.class  Lcom/google/android/gms/internal/fz$2;
.super Lcom/google/android/gms/internal/fz$d;
.field final synthetic yt:Ljava/lang/String;
.field final synthetic yu:[Lcom/google/android/gms/internal/fs;
.field final synthetic yv:Lcom/google/android/gms/internal/fz;
.method constructor <init>(Lcom/google/android/gms/internal/fz;Ljava/lang/String;[Lcom/google/android/gms/internal/fs;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/fz$2;->yv:Lcom/google/android/gms/internal/fz;
iput-object p2, p0, Lcom/google/android/gms/internal/fz$2;->yt:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/fz$2;->yu:[Lcom/google/android/gms/internal/fs;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fz$d;-><init>(Lcom/google/android/gms/internal/fz$1;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fv;)V
.registers 5
new-instance v0, Lcom/google/android/gms/internal/fz$e;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fz$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V
iget-object v1, p0, Lcom/google/android/gms/internal/fz$2;->yt:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/internal/fz$2;->yu:[Lcom/google/android/gms/internal/fs;
invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fw;Ljava/lang/String;[Lcom/google/android/gms/internal/fs;)V
return-void
.end method