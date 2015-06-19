.class public final Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/i;
.field private final a:Lcom/google/android/gms/common/f;
.method public constructor <init>(Lcom/google/android/gms/common/f;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/common/f;
return-void
.end method
.method public a(Lcom/google/android/gms/common/b;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/common/f;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/f;->a(Lcom/google/android/gms/common/b;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/internal/gs;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/common/f;
check-cast p1, Lcom/google/android/gms/internal/gs;
iget-object v1, p1, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/common/f;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/common/f;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method