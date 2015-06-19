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
.field a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/net/Inet4Address;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


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

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->b:I

    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    if-eqz v0, :cond_1b

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1b

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;
    :try_end_1b
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_1b} :catch_26

    :cond_1b
    :goto_1b
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    iput-object p8, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    return-void

    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    goto :goto_1b
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    return-object v0
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

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->h:I

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_59
    move v0, v1

    goto :goto_4
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    return v0
.end method

.method public final g()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "\"%s\" (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/cast/b;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;)V

    return-void
.end method
