.class final Lcom/google/android/gms/tagmanager/al;
.super Ljava/lang/Object;
.field private final a:Ljava/util/Set;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/Map;
.field private final e:Ljava/util/Map;
.field private f:Lcom/google/android/gms/tagmanager/af;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/al;->a:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/al;->b:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/al;->d:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/al;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/al;->e:Ljava/util/Map;
return-void
.end method
.method public final a()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->a:Ljava/util/Set;
return-object v0
.end method
.method public final b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->b:Ljava/util/Map;
return-object v0
.end method
.method public final c()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->d:Ljava/util/Map;
return-object v0
.end method
.method public final d()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->e:Ljava/util/Map;
return-object v0
.end method
.method public final e()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->c:Ljava/util/Map;
return-object v0
.end method
.method public final f()Lcom/google/android/gms/tagmanager/af;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/al;->f:Lcom/google/android/gms/tagmanager/af;
return-object v0
.end method