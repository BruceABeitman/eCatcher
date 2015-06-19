.class final Lcom/google/android/gms/internal/ej$a;
.super Ljava/lang/Object;


# instance fields
.field private final BT:Ljava/lang/String;

.field private final BU:Lcom/google/android/gms/internal/ej$a$a;

.field private final BV:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;>;"
        }
    .end annotation
.end field

.field private BW:Z

.field private BX:Landroid/os/IBinder;

.field private BY:Landroid/content/ComponentName;

.field final synthetic BZ:Lcom/google/android/gms/internal/ej;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ej;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BZ:Lcom/google/android/gms/internal/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ej$a;->BT:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ej$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ej$a$a;-><init>(Lcom/google/android/gms/internal/ej$a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BU:Lcom/google/android/gms/internal/ej$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BY:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BX:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/eh$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/eh$f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/eh$f;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final ee()Lcom/google/android/gms/internal/ej$a$a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BU:Lcom/google/android/gms/internal/ej$a$a;

    return-object v0
.end method

.method public final ef()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BT:Ljava/lang/String;

    return-object v0
.end method

.method public final eg()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final getBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BX:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BY:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return v0
.end method

.method public final isBound()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ej$a;->BW:Z

    return v0
.end method

.method public final w(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ej$a;->BW:Z

    return-void
.end method
