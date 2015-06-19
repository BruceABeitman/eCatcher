.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# instance fields
.field private final za:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<*>;"
        }
    .end annotation
.end field

.field private final zb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/Api$b;[Lcom/google/android/gms/common/api/Scope;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<*>;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->za:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Api;->zb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final dp()Lcom/google/android/gms/common/api/Api$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$b",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->za:Lcom/google/android/gms/common/api/Api$b;

    return-object v0
.end method

.method public final dq()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zb:Ljava/util/ArrayList;

    return-object v0
.end method
