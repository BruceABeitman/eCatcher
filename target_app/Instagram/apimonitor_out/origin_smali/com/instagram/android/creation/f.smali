.class final Lcom/instagram/android/creation/f;
.super Ljava/lang/Object;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v0}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/a/d;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/a/d;->b(I)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/d;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->c(Lcom/instagram/android/creation/d;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v2}, Lcom/instagram/android/creation/d;->d(Lcom/instagram/android/creation/d;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/android/creation/d;->a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_8

    :cond_49
    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/a/d;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1}, Lcom/instagram/android/creation/d;->b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/a/d;->a(I)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v1, v0, p3}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/android/creation/d;Lcom/instagram/venue/model/Venue;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NearbyVenuesFragment.VENUE_SELECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "venueId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "foursquareRequestId"

    iget-object v2, p0, Lcom/instagram/android/creation/f;->a:Lcom/instagram/android/creation/d;

    invoke-static {v2}, Lcom/instagram/android/creation/d;->e(Lcom/instagram/android/creation/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    goto :goto_8
.end method
