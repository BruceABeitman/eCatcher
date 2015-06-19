.class Lcom/google/android/gms/internal/go$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;


# instance fields
.field final synthetic In:Lcom/google/android/gms/internal/go$a;

.field final synthetic vb:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/go$a;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/go$a$1;->In:Lcom/google/android/gms/internal/go$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/go$a$1;->vb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/go$a$1;->vb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
