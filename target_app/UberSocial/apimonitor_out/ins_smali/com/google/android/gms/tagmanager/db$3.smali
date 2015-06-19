.class  Lcom/google/android/gms/tagmanager/db$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/dc;
.field final synthetic a:Ljava/util/Map;
.field final synthetic b:Ljava/util/Map;
.field final synthetic c:Ljava/util/Map;
.field final synthetic d:Ljava/util/Map;
.field final synthetic e:Lcom/google/android/gms/tagmanager/db;
.method constructor <init>(Lcom/google/android/gms/tagmanager/db;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/tagmanager/db$3;->e:Lcom/google/android/gms/tagmanager/db;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/db$3;->a:Ljava/util/Map;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/db$3;->b:Ljava/util/Map;
iput-object p4, p0, Lcom/google/android/gms/tagmanager/db$3;->c:Ljava/util/Map;
iput-object p5, p0, Lcom/google/android/gms/tagmanager/db$3;->d:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/tagmanager/db$3;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/db$3;->b:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v0, :cond_1c
invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->c()Lcom/google/android/gms/tagmanager/ck;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->a(Ljava/util/List;Ljava/util/List;)V
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/db$3;->c:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/db$3;->d:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v0, :cond_38
invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->d()Lcom/google/android/gms/tagmanager/ck;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->a(Ljava/util/List;Ljava/util/List;)V
:cond_38
return-void
.end method