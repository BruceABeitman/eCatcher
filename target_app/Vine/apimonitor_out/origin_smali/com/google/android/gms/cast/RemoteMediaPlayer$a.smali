.class Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;
    }
.end annotation


# instance fields
.field final synthetic AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private Bj:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private Bk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bk:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bj:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No GoogleApiClient available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bj:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;

    invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$a;J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public dW()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bk:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->Bk:J

    return-wide v0
.end method
