.class public final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/b/a;
.field private final a:Ljava/util/Date;
.field private final b:I
.field private final c:Ljava/util/Set;
.field private final d:Z
.field private final e:I
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;ZI)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bo;->a:Ljava/util/Date;
iput p2, p0, Lcom/google/android/gms/internal/bo;->b:I
iput-object p3, p0, Lcom/google/android/gms/internal/bo;->c:Ljava/util/Set;
iput-boolean p4, p0, Lcom/google/android/gms/internal/bo;->d:Z
iput p5, p0, Lcom/google/android/gms/internal/bo;->e:I
return-void
.end method
.method public final a()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->a:Ljava/util/Date;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/bo;->b:I
return v0
.end method
.method public final c()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/bo;->c:Ljava/util/Set;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/bo;->d:Z
return v0
.end method