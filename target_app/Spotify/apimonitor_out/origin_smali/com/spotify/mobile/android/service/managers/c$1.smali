.class final Lcom/spotify/mobile/android/service/managers/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/orbit/OrbitProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/managers/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/managers/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/managers/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/c$1;->a:Lcom/spotify/mobile/android/service/managers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPathUpdated(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c$1;->a:Lcom/spotify/mobile/android/service/managers/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/managers/c;->a(Lcom/spotify/mobile/android/service/managers/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "Notifying change on %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/c$1;->a:Lcom/spotify/mobile/android/service/managers/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/managers/c;->b(Lcom/spotify/mobile/android/service/managers/c;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_8
.end method
