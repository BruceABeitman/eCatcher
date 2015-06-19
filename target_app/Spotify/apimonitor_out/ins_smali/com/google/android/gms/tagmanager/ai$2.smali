.class final Lcom/google/android/gms/tagmanager/ai$2;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/aj;
.field final synthetic a:Lcom/google/android/gms/tagmanager/ai;
.method constructor <init>(Lcom/google/android/gms/tagmanager/ai;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai$2;->a:Lcom/google/android/gms/tagmanager/ai;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/google/android/gms/tagmanager/ag;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ad;)V
.registers 6
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->c()Ljava/util/List;
move-result-object v0
invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->d()Ljava/util/List;
move-result-object v0
invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ad;->e()Lcom/google/android/gms/tagmanager/ab;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->c()Ljava/util/List;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->e()Ljava/util/List;
invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ad;->f()Lcom/google/android/gms/tagmanager/ab;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->d()Ljava/util/List;
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ag;->f()Ljava/util/List;
return-void
.end method