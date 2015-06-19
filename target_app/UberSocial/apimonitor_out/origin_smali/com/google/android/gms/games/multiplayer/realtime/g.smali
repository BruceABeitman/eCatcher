.class public final Lcom/google/android/gms/games/multiplayer/realtime/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/games/multiplayer/realtime/j;

.field b:Lcom/google/android/gms/games/multiplayer/realtime/i;

.field c:Lcom/google/android/gms/games/multiplayer/realtime/a;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/util/ArrayList;

.field g:Landroid/os/Bundle;

.field h:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->h:Z

    const-string v0, "Must provide a RoomUpdateListener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/j;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->a:Lcom/google/android/gms/games/multiplayer/realtime/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/g;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/j;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/games/multiplayer/realtime/f;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/f;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/g;Lcom/google/android/gms/games/multiplayer/realtime/f$1;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-lez p1, :cond_e

    :cond_5
    const/4 v0, 0x1

    :goto_6
    const-string v1, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->e:I

    return-object p0

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/a;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->c:Lcom/google/android/gms/games/multiplayer/realtime/a;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/i;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->b:Lcom/google/android/gms/games/multiplayer/realtime/i;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->h:Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/g;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/g;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
