.class final Lcom/instagram/android/creation/a/x;
.super Landroid/content/BroadcastReceiver;
.source "FollowersShareFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/x;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyVenuesFragment.VENUE_CLEARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/creation/a/x;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0, v2, v2}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyVenuesFragment.VENUE_SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "venueId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/venue/model/Venue;

    const-string v1, "foursquareRequestId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/x;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v2, v0, v1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/x;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "NearbyVenuesFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V

    goto :goto_12
.end method
