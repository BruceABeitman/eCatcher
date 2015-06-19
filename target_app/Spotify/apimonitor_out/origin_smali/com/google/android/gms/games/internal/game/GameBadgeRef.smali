.class public final Lcom/google/android/gms/games/internal/game/GameBadgeRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameBadge;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private f()Lcom/google/android/gms/games/internal/game/GameBadge;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(Lcom/google/android/gms/games/internal/game/GameBadge;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->f()Lcom/google/android/gms/games/internal/game/GameBadge;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 2

    const-string v0, "badge_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    const-string v0, "badge_title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "badge_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/net/Uri;
    .registers 2

    const-string v0, "badge_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->f()Lcom/google/android/gms/games/internal/game/GameBadge;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
