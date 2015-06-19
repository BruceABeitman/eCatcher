.class public final Lcom/google/android/gms/internal/gh;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/l;
.field private final a:Lcom/google/android/gms/common/d;
.method public constructor <init>(Lcom/google/android/gms/common/d;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/common/d;
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/common/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/d;->a(Lcom/google/android/gms/common/a;)V
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/internal/gh;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/common/d;
check-cast p1, Lcom/google/android/gms/internal/gh;
iget-object v1, p1, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/common/d;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/gh;->a:Lcom/google/android/gms/common/d;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method