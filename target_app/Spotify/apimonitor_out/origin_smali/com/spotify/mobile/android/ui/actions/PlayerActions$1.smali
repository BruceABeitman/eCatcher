.class Lcom/spotify/mobile/android/ui/actions/PlayerActions$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/spotify/mobile/android/ui/actions/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/actions/d;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/actions/PlayerActions$1;->b:Lcom/spotify/mobile/android/ui/actions/d;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/actions/PlayerActions$1;->a:Landroid/app/Activity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.media.extra.AUDIO_SESSION"

    const-string v2, "audio_session_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/actions/PlayerActions$1;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
