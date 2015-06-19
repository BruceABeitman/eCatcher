.class final Lcom/bbm/ui/activities/dn;
.super Ljava/lang/Object;
.source "ChannelPostPhotoGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/dm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/dm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/dn;->a:Lcom/bbm/ui/activities/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/bbm/ui/activities/dn;->a:Lcom/bbm/ui/activities/dm;

    iget-object v0, v0, Lcom/bbm/ui/activities/dm;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/dn;->a:Lcom/bbm/ui/activities/dm;

    iget-object v0, v0, Lcom/bbm/ui/activities/dm;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
