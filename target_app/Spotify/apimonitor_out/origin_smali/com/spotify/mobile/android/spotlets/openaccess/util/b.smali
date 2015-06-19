.class public final Lcom/spotify/mobile/android/spotlets/openaccess/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    new-instance v2, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v2, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/spotify/mobile/android/spotlets/openaccess/util/b$1;->a:[I

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    goto :goto_1f

    :pswitch_35
    const/4 v0, 0x1

    goto :goto_1f

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method
