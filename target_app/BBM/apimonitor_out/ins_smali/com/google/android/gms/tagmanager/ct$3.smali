.class  Lcom/google/android/gms/tagmanager/ct$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ct$a;
.field final synthetic WT:Lcom/google/android/gms/tagmanager/ct;
.field final synthetic WU:Ljava/util/Map;
.field final synthetic WV:Ljava/util/Map;
.field final synthetic WW:Ljava/util/Map;
.field final synthetic WX:Ljava/util/Map;
.method constructor <init>(Lcom/google/android/gms/tagmanager/ct;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct$3;->WT:Lcom/google/android/gms/tagmanager/ct;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/ct$3;->WU:Ljava/util/Map;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/ct$3;->WV:Ljava/util/Map;
iput-object p4, p0, Lcom/google/android/gms/tagmanager/ct$3;->WW:Ljava/util/Map;
iput-object p5, p0, Lcom/google/android/gms/tagmanager/ct$3;->WX:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/tagmanager/cr$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cn;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$3;->WU:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ct$3;->WV:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v0, :cond_1c
invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->jl()Lcom/google/android/gms/tagmanager/cl;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/cl;->b(Ljava/util/List;Ljava/util/List;)V
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$3;->WW:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ct$3;->WX:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v0, :cond_38
invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->jm()Lcom/google/android/gms/tagmanager/cl;
move-result-object v2
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/cl;->b(Ljava/util/List;Ljava/util/List;)V
:cond_38
return-void
.end method