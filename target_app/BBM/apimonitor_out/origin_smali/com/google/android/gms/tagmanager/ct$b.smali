.class Lcom/google/android/gms/tagmanager/ct$b;
.super Ljava/lang/Object;


# instance fields
.field private WY:Lcom/google/android/gms/tagmanager/by;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private Wt:Lcom/google/android/gms/internal/d$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/by;Lcom/google/android/gms/internal/d$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;",
            "Lcom/google/android/gms/internal/d$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct$b;->WY:Lcom/google/android/gms/tagmanager/by;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ct$b;->Wt:Lcom/google/android/gms/internal/d$a;

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$b;->WY:Lcom/google/android/gms/tagmanager/by;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->eW()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$b;->Wt:Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$b;->Wt:Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->eW()I

    move-result v0

    goto :goto_11
.end method

.method public jG()Lcom/google/android/gms/internal/d$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$b;->Wt:Lcom/google/android/gms/internal/d$a;

    return-object v0
.end method

.method public ka()Lcom/google/android/gms/tagmanager/by;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct$b;->WY:Lcom/google/android/gms/tagmanager/by;

    return-object v0
.end method
