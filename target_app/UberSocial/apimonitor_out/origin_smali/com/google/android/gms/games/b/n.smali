.class public final Lcom/google/android/gms/games/b/n;
.super Lcom/google/android/gms/common/data/j;

# interfaces
.implements Lcom/google/android/gms/games/b/a;


# instance fields
.field private final c:I

.field private final d:Lcom/google/android/gms/games/Game;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput p3, p0, Lcom/google/android/gms/games/b/n;->c:I

    new-instance v0, Lcom/google/android/gms/games/b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object v0, p0, Lcom/google/android/gms/games/b/n;->d:Lcom/google/android/gms/games/Game;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "external_leaderboard_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/b/n;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    const-string v0, "board_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/n;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "board_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    const-string v0, "score_order"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/b/n;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/b/m;->a(Lcom/google/android/gms/games/b/a;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/b/n;->c:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/games/b/n;->c:I

    if-ge v0, v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/games/b/s;

    iget-object v3, p0, Lcom/google/android/gms/games/b/n;->c_:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/b/n;->d_:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/b/s;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-object v1
.end method

.method public g()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/b/n;->d:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/b/m;->a(Lcom/google/android/gms/games/b/a;)I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/b/n;->j()Lcom/google/android/gms/games/b/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/games/b/a;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/b/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/b/m;-><init>(Lcom/google/android/gms/games/b/a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/b/m;->b(Lcom/google/android/gms/games/b/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
