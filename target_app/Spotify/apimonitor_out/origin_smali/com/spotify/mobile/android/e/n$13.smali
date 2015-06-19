.class final Lcom/spotify/mobile/android/e/n$13;
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

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->b:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->c:Z

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->b:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->q()Lcom/spotify/mobile/android/e/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/r;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->b(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    goto :goto_9

    :cond_38
    iget-boolean v0, p0, Lcom/spotify/mobile/android/e/n$13;->c:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/f;->a(Z)V

    goto :goto_9
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->b(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    iput-boolean v1, p0, Lcom/spotify/mobile/android/e/n$13;->b:Z

    :goto_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$13;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/f;->a(Z)V

    iput-boolean v1, p0, Lcom/spotify/mobile/android/e/n$13;->c:Z

    :cond_48
    :goto_48
    return-void

    :cond_49
    iput-boolean v2, p0, Lcom/spotify/mobile/android/e/n$13;->b:Z

    goto :goto_2d

    :cond_4c
    iput-boolean v2, p0, Lcom/spotify/mobile/android/e/n$13;->c:Z

    goto :goto_48
.end method
