.class Lcom/google/android/gms/tagmanager/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cr;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public lT()Lcom/google/android/gms/tagmanager/cm;
    .registers 2

    new-instance v0, Lcom/google/android/gms/tagmanager/bu;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bu;-><init>()V

    return-object v0
.end method
