.class public Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity$1;->a:[I

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    :goto_20
    return-void

    :pswitch_21
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/f;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_20

    :pswitch_29
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_20

    :pswitch_31
    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_20

    :pswitch_3d
    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/openaccess/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_20

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_3d
    .end packed-switch
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    const v1, 0x7f0a0224

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Lcom/spotify/android/paste/app/FontSupport;->a(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Landroid/content/Context;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/openaccess/OpenAccessActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
