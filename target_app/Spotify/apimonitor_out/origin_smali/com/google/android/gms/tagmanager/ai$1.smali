.class final Lcom/google/android/gms/tagmanager/ai$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ai;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ah;)Lcom/google/android/gms/tagmanager/z;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/google/android/gms/tagmanager/ai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ai;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai$1;->e:Lcom/google/android/gms/tagmanager/ai;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ai$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/ai$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/ai$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tagmanager/ag;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ad;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/ag;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/af;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ad;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai$1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai$1;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_15

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ad;->c()Lcom/google/android/gms/tagmanager/ab;

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai$1;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ai$1;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2a

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ad;->d()Lcom/google/android/gms/tagmanager/ab;

    :cond_2a
    return-void
.end method
