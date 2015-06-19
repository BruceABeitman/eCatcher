.class public final Lcom/spotify/mobile/android/e/d;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/e/l;

.field private final b:Lcom/spotify/mobile/android/e/e;

.field private final c:Lcom/spotify/mobile/android/e/g;

.field private final d:Lcom/spotify/mobile/android/e/a;

.field private final e:Lcom/spotify/mobile/android/e/l;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/e;Lcom/spotify/mobile/android/e/g;Lcom/spotify/mobile/android/e/a;Lcom/spotify/mobile/android/e/l;)V
    .registers 8

    const-string v0, "ConnectPlayback"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/e/d;->a:Lcom/spotify/mobile/android/e/l;

    iput-object p2, p0, Lcom/spotify/mobile/android/e/d;->b:Lcom/spotify/mobile/android/e/e;

    iput-object p3, p0, Lcom/spotify/mobile/android/e/d;->c:Lcom/spotify/mobile/android/e/g;

    iput-object p4, p0, Lcom/spotify/mobile/android/e/d;->d:Lcom/spotify/mobile/android/e/a;

    iput-object p5, p0, Lcom/spotify/mobile/android/e/d;->e:Lcom/spotify/mobile/android/e/l;

    new-instance v0, Lcom/spotify/mobile/android/e/d$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/d$1;-><init>(Lcom/spotify/mobile/android/e/d;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/d;->a:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/d;->b:Lcom/spotify/mobile/android/e/e;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/e;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/d;->c:Lcom/spotify/mobile/android/e/g;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/g;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/d;->d:Lcom/spotify/mobile/android/e/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/a;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/d;->e:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/e/d;)V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/d;->c:Lcom/spotify/mobile/android/e/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/g;->d()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/e/d;->b:Lcom/spotify/mobile/android/e/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/e;->d()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/e/d;->d:Lcom/spotify/mobile/android/e/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_18
    invoke-virtual {p0}, Lcom/spotify/mobile/android/e/d;->c()V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/spotify/mobile/android/e/d;->b()V

    goto :goto_1b
.end method
