.class final Lcom/spotify/mobile/android/service/player/a/e;
.super Lcom/spotify/mobile/android/service/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/b/d",
        "<",
        "Lcom/spotify/mobile/android/service/player/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/support/v4/content/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/k",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/b;",
            ">.android/support/v4/content/l;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/b/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/l;

    invoke-direct {v0, p0}, Landroid/support/v4/content/l;-><init>(Landroid/support/v4/content/k;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/e;->g:Landroid/support/v4/content/l;

    return-void
.end method

.method private static a(Lcom/spotify/mobile/android/service/player/model/b;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/spotify/mobile/android/service/player/model/b;->b()V

    :cond_5
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/spotify/mobile/android/service/player/model/b;

    invoke-static {p1}, Lcom/spotify/mobile/android/service/player/a/e;->a(Lcom/spotify/mobile/android/service/player/model/b;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/service/player/model/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/e;->f:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/b;

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/b/d;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/model/b;->b()V

    :cond_e
    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/e;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/service/player/model/a/b;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/service/player/model/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/e;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/service/player/model/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected final e()V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/e;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/player/a/e;->g:Landroid/support/v4/content/l;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->e()V

    return-void
.end method

.method protected final f()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->f()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/player/a/e;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/e;->g:Landroid/support/v4/content/l;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected final g()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/e;->f:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/mobile/android/service/player/model/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/e;->a(Lcom/spotify/mobile/android/service/player/model/b;)V

    invoke-super {p0}, Lcom/spotify/mobile/android/service/b/d;->g()V

    return-void
.end method

.method protected final s()Landroid/net/Uri;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    return-object v0
.end method
