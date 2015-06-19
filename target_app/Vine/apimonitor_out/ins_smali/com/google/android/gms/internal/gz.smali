.class public final Lcom/google/android/gms/internal/gz;
.super Ljava/lang/Object;
.field private final DG:Landroid/view/View;
.field private final FR:Lcom/google/android/gms/internal/gz$a;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/gz$a;
invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/gz$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
iput-object p4, p0, Lcom/google/android/gms/internal/gz;->DG:Landroid/view/View;
return-void
.end method
.method public fe()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->fe()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public ff()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->ff()I
move-result v0
return v0
.end method
.method public fg()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->fg()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public fh()[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->fg()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public fi()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->fi()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public fj()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->DG:Landroid/view/View;
return-object v0
.end method
.method public getAccountName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz;->FR:Lcom/google/android/gms/internal/gz$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gz$a;->getAccountName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method