.class public final Lcom/spotify/mobile/android/e/g;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Foreground"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/g;->a:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/e/g$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/g$1;-><init>(Lcom/spotify/mobile/android/e/g;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/g;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/e/g;)V
    .registers 1

    invoke-super {p0}, Lcom/spotify/mobile/android/e/l;->c()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/e/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/spotify/mobile/android/e/l;->b()V

    return-void
.end method

.method public final c()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/e/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/g;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/e/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/g;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
