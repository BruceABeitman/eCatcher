.class  Lcom/google/android/gms/tagmanager/de;
.super Ljava/lang/Object;
.field private final a:Ljava/util/Set;
.field private final b:Ljava/util/Map;
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/Map;
.field private final e:Ljava/util/Map;
.field private f:Lcom/google/android/gms/tagmanager/ct;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->a:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->b:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->d:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/de;->e:Ljava/util/Map;
return-void
.end method
.method public a()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->a:Ljava/util/Set;
return-object v0
.end method
.method public a(Lcom/google/android/gms/tagmanager/ct;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/de;->f:Lcom/google/android/gms/tagmanager/ct;
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;Lcom/google/android/gms/tagmanager/ct;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_14
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/de;->b:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_14
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/de;->d:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->b:Ljava/util/Map;
return-object v0
.end method
.method public b(Lcom/google/android/gms/tagmanager/cx;Lcom/google/android/gms/tagmanager/ct;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->c:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_14
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/de;->c:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Lcom/google/android/gms/tagmanager/cx;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->e:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_14
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/de;->e:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public c()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->d:Ljava/util/Map;
return-object v0
.end method
.method public d()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->e:Ljava/util/Map;
return-object v0
.end method
.method public e()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->c:Ljava/util/Map;
return-object v0
.end method
.method public f()Lcom/google/android/gms/tagmanager/ct;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/de;->f:Lcom/google/android/gms/tagmanager/ct;
return-object v0
.end method