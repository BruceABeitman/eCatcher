.class Lcom/google/android/gms/tagmanager/ct$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/l$a",
        "<",
        "Lcom/google/android/gms/tagmanager/cr$a;",
        "Lcom/google/android/gms/tagmanager/by",
        "<",
        "Lcom/google/android/gms/internal/d$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic WT:Lcom/google/android/gms/tagmanager/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct$1;->WT:Lcom/google/android/gms/tagmanager/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cr$a;Lcom/google/android/gms/tagmanager/by;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->eW()I

    move-result v0

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/tagmanager/cr$a;

    check-cast p2, Lcom/google/android/gms/tagmanager/by;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ct$1;->a(Lcom/google/android/gms/tagmanager/cr$a;Lcom/google/android/gms/tagmanager/by;)I

    move-result v0

    return v0
.end method
