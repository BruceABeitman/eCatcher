.class final Lcom/twidroid/uberchannels/models/UberTopic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/uberchannels/models/UberTopic;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/twidroid/uberchannels/models/UberTopic;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/twidroid/uberchannels/models/UberTopic;-><init>(Lorg/json/JSONObject;I)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "UberTopic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UberChannelTheme::createFromParcel - Failed to parse theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-direct {v0}, Lcom/twidroid/uberchannels/models/UberTopic;-><init>()V

    goto :goto_12
.end method

.method public a(I)[Lcom/twidroid/uberchannels/models/UberTopic;
    .registers 3

    new-array v0, p1, [Lcom/twidroid/uberchannels/models/UberTopic;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/uberchannels/models/UberTopic$1;->a(Landroid/os/Parcel;)Lcom/twidroid/uberchannels/models/UberTopic;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/uberchannels/models/UberTopic$1;->a(I)[Lcom/twidroid/uberchannels/models/UberTopic;

    move-result-object v0

    return-object v0
.end method
