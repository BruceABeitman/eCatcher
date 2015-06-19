.class final Lcom/spotify/mobile/android/spotlets/b/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/b/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$9;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$9;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->c(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/f;->a(I)V

    return-void
.end method
