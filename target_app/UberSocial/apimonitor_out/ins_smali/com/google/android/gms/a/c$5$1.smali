.class  Lcom/google/android/gms/a/c$5$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/a/e;
.field final synthetic a:Lcom/google/android/gms/common/api/Status;
.field final synthetic b:Lcom/google/android/gms/a/c$5;
.method constructor <init>(Lcom/google/android/gms/a/c$5;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/a/c$5$1;->b:Lcom/google/android/gms/a/c$5;
iput-object p2, p0, Lcom/google/android/gms/a/c$5$1;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/c$5$1;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/c$5$1;->b:Lcom/google/android/gms/a/c$5;
iget v0, v0, Lcom/google/android/gms/a/c$5;->a:I
return v0
.end method