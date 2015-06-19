.class final Lcom/google/android/gms/e/a$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/c;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
const v0, 0x7fffffff
return v0
.end method
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/qm;
.registers 8
new-instance v0, Lcom/google/android/gms/internal/qm;
invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/qm;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)V
return-object v0
.end method
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/e/a$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/internal/qm;
move-result-object v0
return-object v0
.end method