.class public final Lcom/spotify/mobile/android/service/player/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/player/model/b;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/player/model/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    return-void
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/player/model/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public final a(I)Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/player/model/a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/player/model/a/b;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_a
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c
.end method
