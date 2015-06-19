.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# instance fields
.field private final vl:Lcom/google/android/gms/common/api/Status;

.field private final wP:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->vl:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->wP:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->vl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
