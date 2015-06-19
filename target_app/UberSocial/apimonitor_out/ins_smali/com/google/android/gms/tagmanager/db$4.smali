.class  Lcom/google/android/gms/tagmanager/db$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/dc;
.field final synthetic a:Lcom/google/android/gms/tagmanager/db;
.method constructor <init>(Lcom/google/android/gms/tagmanager/db;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/db$4;->a:Lcom/google/android/gms/tagmanager/db;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cx;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V
.registers 8
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->d()Ljava/util/List;
move-result-object v0
invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->e()Ljava/util/List;
move-result-object v0
invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->e()Lcom/google/android/gms/tagmanager/ck;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->d()Ljava/util/List;
move-result-object v1
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->i()Ljava/util/List;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->a(Ljava/util/List;Ljava/util/List;)V
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->f()Lcom/google/android/gms/tagmanager/ck;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->e()Ljava/util/List;
move-result-object v1
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->j()Ljava/util/List;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->a(Ljava/util/List;Ljava/util/List;)V
return-void
.end method