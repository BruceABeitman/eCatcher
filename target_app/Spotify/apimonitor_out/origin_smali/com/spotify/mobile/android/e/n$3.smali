.class final Lcom/spotify/mobile/android/e/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/n;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/service/managers/d;Lcom/spotify/mobile/android/e/p;Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/service/aj;Lcom/spotify/mobile/android/service/ai;Lcom/spotify/mobile/android/service/managers/ConnectManager;Lcom/spotify/mobile/android/service/managers/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/n;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lcom/spotify/mobile/android/service/c/i;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v1}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v2}, Lcom/spotify/mobile/android/e/n;->o(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v3}, Lcom/spotify/mobile/android/e/n;->p(Lcom/spotify/mobile/android/e/n;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v4}, Lcom/spotify/mobile/android/e/n;->k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/service/c/i;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;Lcom/spotify/mobile/android/service/managers/f;)V

    :goto_2d
    iget-object v1, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v1}, Lcom/spotify/mobile/android/e/n;->n(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/ai;->a(Lcom/spotify/mobile/android/service/c/d;)V

    return-void

    :cond_37
    new-instance v0, Lcom/spotify/mobile/android/service/c/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v1}, Lcom/spotify/mobile/android/e/n;->f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v2}, Lcom/spotify/mobile/android/e/n;->o(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v3}, Lcom/spotify/mobile/android/e/n;->p(Lcom/spotify/mobile/android/e/n;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/service/c/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/c/b;Landroid/os/Handler;)V

    goto :goto_2d
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$3;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->n(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/ai;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/ai;->a(Lcom/spotify/mobile/android/service/c/d;)V

    return-void
.end method
