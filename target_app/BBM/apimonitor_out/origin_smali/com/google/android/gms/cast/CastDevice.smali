.class public Lcom/google/android/gms/cast/CastDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private wC:Ljava/lang/String;

.field wD:Ljava/lang/String;

.field private wE:Ljava/net/Inet4Address;

.field private wF:Ljava/lang/String;

.field private wG:Ljava/lang/String;

.field private wH:Ljava/lang/String;

.field private wI:I

.field private wJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/cast/b;

    invoke-direct {v0}, Lcom/google/android/gms/cast/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v7, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/CastDevice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->wD:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wD:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wD:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wE:Ljava/net/Inet4Address;
    :try_end_1b
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_1b} :catch_26

    :cond_1b
    :goto_1b
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->wF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->wG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/CastDevice;->wH:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->wI:I

    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    return-void

    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wE:Ljava/net/Inet4Address;

    goto :goto_1b
.end method

.method public static getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/CastDevice;

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/cast/CastDevice;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wE:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wE:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wF:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wF:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->wI:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->wI:I

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5d
    move v0, v1

    goto :goto_4
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wH:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wF:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(II)Lcom/google/android/gms/common/images/WebImage;
    .registers 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v1

    :cond_b
    if-lez p1, :cond_f

    if-gtz p2, :cond_19

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v1, v0

    goto :goto_a

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v5

    if-lt v4, p1, :cond_48

    if-lt v5, p2, :cond_48

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v6

    if-le v6, v4, :cond_6e

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v4

    if-le v4, v5, :cond_6e

    :cond_46
    move-object v2, v0

    goto :goto_20

    :cond_48
    if-ge v4, p1, :cond_6e

    if-ge v5, p2, :cond_6e

    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getWidth()I

    move-result v6

    if-ge v6, v4, :cond_6e

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->getHeight()I

    move-result v4

    if-ge v4, v5, :cond_6e

    :cond_5a
    :goto_5a
    move-object v1, v0

    goto :goto_20

    :cond_5c
    if-eqz v2, :cond_60

    :goto_5e
    move-object v1, v2

    goto :goto_a

    :cond_60
    if-eqz v1, :cond_64

    move-object v2, v1

    goto :goto_5e

    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v2, v0

    goto :goto_5e

    :cond_6e
    move-object v0, v1

    goto :goto_5a
.end method

.method public getIcons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/net/Inet4Address;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wE:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wG:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePort()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->wI:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->wj:I

    return v0
.end method

.method public hasIcons()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isSameDevice(Lcom/google/android/gms/cast/CastDevice;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public putInBundle(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "\"%s\" (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->wF:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->wC:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/b;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V

    return-void
.end method
