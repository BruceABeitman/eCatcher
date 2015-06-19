.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    packed-switch p2, :pswitch_data_96

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bZ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ca:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->d(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v1, "output"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->e(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_62
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aQ:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->cb:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->f(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->f(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;Landroid/net/Uri;)V

    goto/16 :goto_3

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_4
        :pswitch_29
        :pswitch_62
    .end packed-switch
.end method
