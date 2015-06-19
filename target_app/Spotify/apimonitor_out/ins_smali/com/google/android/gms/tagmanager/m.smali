.class abstract Lcom/google/android/gms/tagmanager/m;
.super Ljava/lang/Object;
.field private final a:Ljava/util/Set;
.method public abstract a()Z
.end method
.method final a(Ljava/util/Set;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Ljava/util/Set;
invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public abstract b()Lcom/google/android/gms/internal/dn;
.end method
.method public final c()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Ljava/util/Set;
return-object v0
.end method