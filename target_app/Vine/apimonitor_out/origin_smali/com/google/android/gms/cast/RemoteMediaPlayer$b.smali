.class abstract Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.super Lcom/google/android/gms/cast/Cast$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/Cast$a",
        "<",
        "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field Bn:Lcom/google/android/gms/internal/gr;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->Bn:Lcom/google/android/gms/internal/gr;

    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$2;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
