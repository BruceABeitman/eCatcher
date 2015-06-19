.class public abstract Lcom/google/android/gms/cast/Cast$a;
.super Lcom/google/android/gms/common/api/a$a;
.implements Lcom/google/android/gms/common/api/PendingResult;
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/google/android/gms/cast/Cast;->va:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V
return-void
.end method
.method public c(ILjava/lang/String;)V
.registers 5
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v1, 0x0
invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->a(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method
.method public x(I)V
.registers 3
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/Cast$a;->a(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method