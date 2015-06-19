.class final Lcom/google/android/gms/games/PlayerEntity$a;
.super Lcom/google/android/gms/games/c;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/games/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final ak(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;
    .registers 15

    const/4 v11, 0x0

    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->fk()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->b(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_17

    const-class v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayerEntity;->at(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/gms/games/c;->ak(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_41

    move-object v4, v11

    :goto_2f
    if-nez v1, :cond_46

    move-object v5, v11

    :goto_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    const/4 v1, 0x4

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    move-object v12, v11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/games/PlayerEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2f

    :cond_46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_32
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/PlayerEntity$a;->ak(Landroid/os/Parcel;)Lcom/google/android/gms/games/PlayerEntity;

    move-result-object v0

    return-object v0
.end method
