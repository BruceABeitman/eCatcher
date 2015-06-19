.class public Lcom/google/android/gms/cast/CastDevice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/cast/ab;

    invoke-direct {v0}, Lcom/google/android/gms/cast/ab;-><init>()V

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

.method public static b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
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
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->b:I

    return v0
.end method

.method public a(II)Lcom/google/android/gms/common/images/WebImage;
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-object v1

    :cond_b
    if-lez p1, :cond_f

    if-gtz p2, :cond_19

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v1, v0

    goto :goto_a

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->d()I

    move-result v5

    if-lt v4, p1, :cond_4c

    if-lt v5, p2, :cond_4c

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->c()I

    move-result v6

    if-le v6, v4, :cond_72

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->d()I

    move-result v4

    if-le v4, v5, :cond_72

    :cond_46
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_49
    move-object v2, v1

    move-object v1, v0

    goto :goto_20

    :cond_4c
    if-ge v4, p1, :cond_72

    if-ge v5, p2, :cond_72

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->c()I

    move-result v6

    if-ge v6, v4, :cond_72

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/WebImage;->d()I

    move-result v4

    if-ge v4, v5, :cond_72

    :cond_5e
    move-object v1, v2

    goto :goto_49

    :cond_60
    if-eqz v2, :cond_64

    :goto_62
    move-object v1, v2

    goto :goto_a

    :cond_64
    if-eqz v1, :cond_68

    move-object v2, v1

    goto :goto_62

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    move-object v2, v0

    goto :goto_62

    :cond_72
    move-object v0, v1

    move-object v1, v2

    goto :goto_49
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2
.end method

.method public a(Lcom/google/android/gms/cast/CastDevice;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/net/Inet4Address;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->d:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->h:I

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5d
    move v0, v1

    goto :goto_4
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->h:I

    return v0
.end method

.method public h()Ljava/util/List;
    .registers 2

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

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/util/List;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/cast/ab;->a(Lcom/google/android/gms/cast/CastDevice;Landroid/os/Parcel;I)V

    return-void
.end method
