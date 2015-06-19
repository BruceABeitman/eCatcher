.class final Lcom/spotify/music/MainActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$7;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "error_code"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "error_description"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    const-string v2, "onSocialError: %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;->getSocialErrorAsString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v1, :pswitch_data_78

    :pswitch_25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Here we received an onSocialError call that we should have handled ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_47
    :goto_47
    :pswitch_47
    return-void

    :pswitch_48
    iget-object v0, p0, Lcom/spotify/music/MainActivity$7;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->k(Lcom/spotify/music/MainActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/music/MainActivity$7;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->l(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$7;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->l(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->A:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    goto :goto_47

    :pswitch_6a
    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->s(Landroid/content/Context;)V

    goto :goto_47

    :pswitch_6e
    const-string v1, "Error loading user data for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_47
        :pswitch_6e
        :pswitch_47
        :pswitch_25
        :pswitch_47
        :pswitch_48
        :pswitch_6a
    .end packed-switch
.end method
