.class public final Lcom/google/android/gms/internal/bx;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;
.field private final d:Ljava/util/Date;
.field private final f:Ljava/util/Set;
.field private final g:Z
.field private final mj:I
.field private final nP:I
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;ZI)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bx;->d:Ljava/util/Date;
iput p2, p0, Lcom/google/android/gms/internal/bx;->mj:I
iput-object p3, p0, Lcom/google/android/gms/internal/bx;->f:Ljava/util/Set;
iput-boolean p4, p0, Lcom/google/android/gms/internal/bx;->g:Z
iput p5, p0, Lcom/google/android/gms/internal/bx;->nP:I
return-void
.end method
.method public getBirthday()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/bx;->d:Ljava/util/Date;
return-object v0
.end method
.method public getGender()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/bx;->mj:I
return v0
.end method
.method public getKeywords()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/bx;->f:Ljava/util/Set;
return-object v0
.end method
.method public isTesting()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/bx;->g:Z
return v0
.end method
.method public taggedForChildDirectedTreatment()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/bx;->nP:I
return v0
.end method