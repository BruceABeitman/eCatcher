.class final Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v2, "Response is null"

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-boolean v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->d:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->b(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->e:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;->a(Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b;Ljava/lang/String;Ljava/util/HashMap;Lcom/spotify/mobile/android/util/bi;)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/openaccess/spotifywebapi/b$2;->c:Lcom/spotify/mobile/android/util/bi;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/util/bi;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2c
.end method
