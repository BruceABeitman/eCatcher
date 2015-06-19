.class public Lcom/google/android/gms/plus/l;
.super Ljava/lang/Object;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/google/android/gms/common/e;
.field private final c:Lcom/google/android/gms/common/f;
.field private final d:Lcom/google/android/gms/plus/internal/x;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/plus/l;->b:Lcom/google/android/gms/common/e;
iput-object p3, p0, Lcom/google/android/gms/plus/l;->c:Lcom/google/android/gms/common/f;
new-instance v0, Lcom/google/android/gms/plus/internal/x;
iget-object v1, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/x;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
return-void
.end method
.method public a()Lcom/google/android/gms/plus/l;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/x;->a()Lcom/google/android/gms/plus/internal/x;
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/plus/l;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/x;->a(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
return-object p0
.end method
.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/plus/l;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/x;->a([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
return-object p0
.end method
.method public b()Lcom/google/android/gms/plus/k;
.registers 7
new-instance v0, Lcom/google/android/gms/plus/k;
new-instance v1, Lcom/google/android/gms/plus/internal/l;
iget-object v2, p0, Lcom/google/android/gms/plus/l;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/plus/l;->b:Lcom/google/android/gms/common/e;
iget-object v4, p0, Lcom/google/android/gms/plus/l;->c:Lcom/google/android/gms/common/f;
iget-object v5, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
invoke-virtual {v5}, Lcom/google/android/gms/plus/internal/x;->b()Lcom/google/android/gms/plus/internal/h;
move-result-object v5
invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/plus/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;Lcom/google/android/gms/plus/internal/h;)V
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/k;-><init>(Lcom/google/android/gms/plus/internal/l;)V
return-object v0
.end method
.method public varargs b([Ljava/lang/String;)Lcom/google/android/gms/plus/l;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/l;->d:Lcom/google/android/gms/plus/internal/x;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/x;->b([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
return-object p0
.end method