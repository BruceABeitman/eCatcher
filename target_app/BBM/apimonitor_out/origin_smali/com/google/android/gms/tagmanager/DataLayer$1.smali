.class Lcom/google/android/gms/tagmanager/DataLayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$c;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/DataLayer$c$a;->b(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public bi(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
