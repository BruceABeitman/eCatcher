.class final Lcom/bbm/ui/activities/dl;
.super Ljava/lang/Object;
.source "ChannelPostPhotoGalleryActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/dl;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/dl;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->g(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/ui/activities/dl;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    iget v1, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;I)V

    :cond_f
    return-void
.end method
