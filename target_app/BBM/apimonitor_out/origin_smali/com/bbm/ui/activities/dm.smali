.class final Lcom/bbm/ui/activities/dm;
.super Ljava/util/TimerTask;
.source "ChannelPostPhotoGalleryActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/dm;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/dm;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    new-instance v1, Lcom/bbm/ui/activities/dn;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/dn;-><init>(Lcom/bbm/ui/activities/dm;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
