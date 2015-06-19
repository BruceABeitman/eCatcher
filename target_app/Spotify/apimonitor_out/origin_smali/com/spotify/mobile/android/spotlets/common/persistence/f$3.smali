.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f;
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Landroid/os/Bundle;Lcom/spotify/mobile/android/spotlets/common/persistence/c;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->c:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Runnable;

    :try_start_4
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;)V

    aput-object v2, v1, v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_17} :catch_2a

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;

    invoke-direct {v2, p0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    return-void

    :catch_2a
    move-exception v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    if-eqz v2, :cond_17

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;

    invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$2;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;Ljava/io/IOException;)V

    aput-object v2, v1, v3

    goto :goto_17
.end method
