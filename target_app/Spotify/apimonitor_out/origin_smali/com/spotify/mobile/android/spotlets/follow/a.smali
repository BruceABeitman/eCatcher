.class public final Lcom/spotify/mobile/android/spotlets/follow/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/follow/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    if-eq p1, v0, :cond_26

    const/4 v0, 0x1

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "following is already "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    if-eqz p1, :cond_28

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    :goto_20
    iput v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2f

    monitor-exit p0

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_6

    :cond_28
    :try_start_28
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2f

    goto :goto_20

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/follow/a;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/follow/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    if-ne v2, v3, :cond_29

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    if-eq v2, v3, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    add-int/2addr v0, v1

    return v0

    :cond_1e
    move v0, v1

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "uri: %s  followingCount: %s  followersCount: %s  isFollowing: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/follow/a;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
