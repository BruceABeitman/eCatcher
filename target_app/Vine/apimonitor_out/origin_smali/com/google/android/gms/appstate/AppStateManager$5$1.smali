.class Lcom/google/android/gms/appstate/AppStateManager$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager$5;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yG:Lcom/google/android/gms/common/api/Status;

.field final synthetic yJ:Lcom/google/android/gms/appstate/AppStateManager$5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->yJ:Lcom/google/android/gms/appstate/AppStateManager$5;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->yG:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateKey()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->yJ:Lcom/google/android/gms/appstate/AppStateManager$5;

    iget v0, v0, Lcom/google/android/gms/appstate/AppStateManager$5;->yH:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->yG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
