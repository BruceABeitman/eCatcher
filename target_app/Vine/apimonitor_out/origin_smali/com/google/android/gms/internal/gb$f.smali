.class final Lcom/google/android/gms/internal/gb$f;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final yP:I

.field private final yQ:Lcom/google/android/gms/appstate/AppStateBuffer;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput p1, p0, Lcom/google/android/gms/internal/gb$f;->yP:I

    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    return-void
.end method

.method private dR()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gb$f;->dR()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gb$f;->dR()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method public getLocalData()[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v0

    goto :goto_9
.end method

.method public getResolvedVersion()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getServerData()[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v0

    goto :goto_9
.end method

.method public getStateKey()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gb$f;->yP:I

    return v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f;->yQ:Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->close()V

    return-void
.end method
