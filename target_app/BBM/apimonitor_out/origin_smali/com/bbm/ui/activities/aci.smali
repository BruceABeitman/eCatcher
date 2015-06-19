.class final Lcom/bbm/ui/activities/aci;
.super Lcom/bbm/ui/cj;
.source "ProfileIconSourceActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->h()V

    return-void
.end method

.method public final a(I)V
    .registers 7

    packed-switch p1, :pswitch_data_56

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->a(Lcom/bbm/ui/activities/ProfileIconSourceActivity;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v1, "output"

    iget-object v2, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->b(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->c(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aci;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0507

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_3

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
