.class public final Lcom/spotify/mobile/android/e/i;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/e/l;

.field private final b:Lcom/spotify/mobile/android/e/l;

.field private final c:Lcom/spotify/mobile/android/e/l;

.field private final d:Lcom/spotify/mobile/android/e/a;

.field private e:J

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/e;Lcom/spotify/mobile/android/e/a;)V
    .registers 7

    const-string v0, "Idle"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/spotify/mobile/android/e/i;->e:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/i;->f:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/e/i$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/i$1;-><init>(Lcom/spotify/mobile/android/e/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/i;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/spotify/mobile/android/e/i;->a:Lcom/spotify/mobile/android/e/l;

    iput-object p2, p0, Lcom/spotify/mobile/android/e/i;->b:Lcom/spotify/mobile/android/e/l;

    iput-object p3, p0, Lcom/spotify/mobile/android/e/i;->c:Lcom/spotify/mobile/android/e/l;

    iput-object p4, p0, Lcom/spotify/mobile/android/e/i;->d:Lcom/spotify/mobile/android/e/a;

    new-instance v0, Lcom/spotify/mobile/android/e/i$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/i$2;-><init>(Lcom/spotify/mobile/android/e/i;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->a:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->b:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->c:Lcom/spotify/mobile/android/e/l;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->d:Lcom/spotify/mobile/android/e/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/e/a;->a(Lcom/spotify/mobile/android/e/o;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->a:Lcom/spotify/mobile/android/e/l;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->b:Lcom/spotify/mobile/android/e/l;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->c:Lcom/spotify/mobile/android/e/l;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->d:Lcom/spotify/mobile/android/e/a;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/e/i;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/spotify/mobile/android/e/i;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/i;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/spotify/mobile/android/e/i;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
