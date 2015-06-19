.class public final Lcom/google/android/gms/games/d;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final c:Lcom/google/android/gms/games/v;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/v;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/d;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->d()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->g()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public g()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->n()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->c_(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_c
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/d;->c:Lcom/google/android/gms/games/v;

    iget-object v0, v0, Lcom/google/android/gms/games/v;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/d;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()Lcom/google/android/gms/games/Player;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/d;->n()Lcom/google/android/gms/games/Player;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
