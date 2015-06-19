.class final Lcom/spotify/music/spotlets/radio/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/music/spotlets/radio/service/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/spotlets/radio/b/a;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/b/a$3;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$3;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->f(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$3;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->g(Lcom/spotify/music/spotlets/radio/b/a;)V

    return-void
.end method

.method public final b()V
    .registers 2

    const-string v0, "Failed to change Radio Model"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$3;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->g(Lcom/spotify/music/spotlets/radio/b/a;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$3;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->g(Lcom/spotify/music/spotlets/radio/b/a;)V

    return-void
.end method
