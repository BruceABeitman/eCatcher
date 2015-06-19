.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/common/api/g;
.field private final b:Lcom/google/android/gms/common/api/h;
.field private final c:Ljava/util/ArrayList;
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/q;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/g;
iput-object p2, p0, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/h;
new-instance v0, Ljava/util/ArrayList;
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/ArrayList;
return-void
.end method
.method public final a()Lcom/google/android/gms/common/api/g;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/g;
return-object v0
.end method
.method public final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method public final c()Lcom/google/android/gms/common/api/h;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/h;
return-object v0
.end method