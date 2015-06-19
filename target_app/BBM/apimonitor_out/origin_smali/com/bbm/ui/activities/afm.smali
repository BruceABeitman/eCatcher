.class final Lcom/bbm/ui/activities/afm;
.super Lcom/bbm/ui/cj;
.source "SetChannelAvatarActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/afm;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/afm;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->h()V

    return-void
.end method

.method public final a(I)V
    .registers 5

    packed-switch p1, :pswitch_data_2c

    :goto_3
    return-void

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/afm;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    const-string v2, "image/jpeg"

    invoke-static {v2}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a(Lcom/bbm/ui/activities/SetChannelAvatarActivity;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v1, "output"

    iget-object v2, p0, Lcom/bbm/ui/activities/afm;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->b(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/afm;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .registers 1

    return-void
.end method
