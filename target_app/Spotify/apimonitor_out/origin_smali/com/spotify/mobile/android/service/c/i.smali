.class public final Lcom/spotify/mobile/android/service/c/i;
.super Lcom/spotify/mobile/android/service/c/d;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/managers/g;


# instance fields
.field private final f:Lcom/spotify/mobile/android/service/managers/f;

.field private g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;Lcom/spotify/mobile/android/service/managers/f;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/service/c/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;)V

    new-instance v0, Lcom/spotify/mobile/android/service/c/i$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/i$1;-><init>(Lcom/spotify/mobile/android/service/c/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->h:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/spotify/mobile/android/service/c/i;->f:Lcom/spotify/mobile/android/service/managers/f;

    invoke-virtual {p4, p0}, Lcom/spotify/mobile/android/service/managers/f;->a(Lcom/spotify/mobile/android/service/managers/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->f:Lcom/spotify/mobile/android/service/managers/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/managers/f;->b()Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/c/i;)Lcom/spotify/mobile/android/g/a;
    .registers 15

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    if-eqz v0, :cond_42

    new-instance v0, Lcom/spotify/mobile/android/service/c/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h()Z

    move-result v6

    iget-object v8, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v8}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g()Z

    move-result v8

    iget-object v9, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {v9}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f()Z

    move-result v9

    const/4 v13, 0x1

    move-object v10, v3

    move v11, v7

    move v12, v7

    invoke-direct/range {v0 .. v13}, Lcom/spotify/mobile/android/service/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZZZLjava/lang/String;ZZZ)V

    invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    :goto_41
    return-object v0

    :cond_42
    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    goto :goto_41
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/i;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->f:Lcom/spotify/mobile/android/service/managers/f;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/managers/f;->a(Lcom/spotify/mobile/android/service/managers/g;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/c/i;->g:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/c/i;->a()V

    return-void
.end method

.method public final d()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/c/d;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/i;->f:Lcom/spotify/mobile/android/service/managers/f;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/managers/f;->b(Lcom/spotify/mobile/android/service/managers/g;)V

    return-void
.end method
