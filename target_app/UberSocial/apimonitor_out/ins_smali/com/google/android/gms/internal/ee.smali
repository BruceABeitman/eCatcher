.class public final Lcom/google/android/gms/internal/ee;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/ee$a;
.field private final b:Landroid/view/View;
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/ee$a;
invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ee$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
iput-object p4, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/view/View;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->b()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->c()I
move-result v0
return v0
.end method
.method public d()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->e()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public e()[Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->e()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Lcom/google/android/gms/internal/ee$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public g()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->b:Landroid/view/View;
return-object v0
.end method