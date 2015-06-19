.class public final Lcom/spotify/mobile/android/e/k;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/e/p;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/p;)V
    .registers 6

    const-string v0, "PlaybackNotification"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    new-instance v0, Lcom/spotify/mobile/android/e/k$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/k$1;-><init>(Lcom/spotify/mobile/android/e/k;)V

    new-instance v1, Lcom/spotify/mobile/android/e/k$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/e/k$2;-><init>(Lcom/spotify/mobile/android/e/k;)V

    new-instance v2, Lcom/spotify/mobile/android/e/k$3;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/e/k$3;-><init>(Lcom/spotify/mobile/android/e/k;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/p;->m()Lcom/spotify/mobile/android/e/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/e/k;)Lcom/spotify/mobile/android/e/p;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->k()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->k()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->c()V

    :cond_15
    invoke-super {p0}, Lcom/spotify/mobile/android/e/l;->b()V

    return-void
.end method

.method public final c()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/e/l;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->c()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/e/k;->a:Lcom/spotify/mobile/android/e/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->k()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->b()V

    :cond_18
    return-void
.end method
