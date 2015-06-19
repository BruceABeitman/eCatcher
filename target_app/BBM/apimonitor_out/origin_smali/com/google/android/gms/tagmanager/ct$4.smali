.class Lcom/google/android/gms/tagmanager/ct$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ct$a;


# instance fields
.field final synthetic WT:Lcom/google/android/gms/tagmanager/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct$4;->WT:Lcom/google/android/gms/tagmanager/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cr$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cn;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cr$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cn;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jP()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->jn()Lcom/google/android/gms/tagmanager/cl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jP()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jU()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cl;->b(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->jo()Lcom/google/android/gms/tagmanager/cl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jQ()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$e;->jV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cl;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
