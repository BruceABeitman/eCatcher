.class public final Lcom/instagram/android/creation/d;
.super Lcom/instagram/base/a/b;
.source "NearbyVenuesFragment.java"

# interfaces
.implements Lcom/instagram/common/p/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private aa:Ljava/util/Observer;

.field private ab:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/instagram/android/a/d;

.field private e:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

.field private h:Ljava/lang/String;

.field private i:Lcom/instagram/common/c/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    const-string v0, "NearbyVenuesFragment"

    iput-object v0, p0, Lcom/instagram/android/creation/d;->a:Ljava/lang/String;

    new-instance v0, Lcom/instagram/android/creation/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/e;-><init>(Lcom/instagram/android/creation/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/d;->aa:Ljava/util/Observer;

    new-instance v0, Lcom/instagram/android/creation/f;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/f;-><init>(Lcom/instagram/android/creation/d;)V

    iput-object v0, p0, Lcom/instagram/android/creation/d;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private U()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/d;->aa:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->b(Ljava/util/Observer;)V

    return-void
.end method

.method private V()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/d;->aa:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->a(Ljava/util/Observer;)Lcom/instagram/android/g/a;

    return-void
.end method

.method private W()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_11
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->U()V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/d;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-class v2, Lcom/instagram/android/foursquare/NearbyVenuesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "searchString"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/k;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "searchString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/creation/d;

    invoke-direct {v2}, Lcom/instagram/android/creation/d;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v1

    if-nez p1, :cond_2b

    const-string v0, "NearbyVenuesFragment"

    :goto_23
    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->c(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .registers 6

    sget v0, Lcom/facebook/aw;->row_search_venue_edit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->row_search_edit_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v2, Lcom/instagram/android/creation/j;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/j;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2, v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setClearButtonColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Landroid/location/Location;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/d;Lcom/instagram/venue/model/Venue;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/d;->a(Lcom/instagram/venue/model/Venue;I)V

    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;I)V
    .registers 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "foursquare"

    if-eq v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "foursquare_venue_select"

    invoke-direct {v0, v1, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    iget-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v1}, Lcom/instagram/android/a/d;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "lat"

    const-string v3, "%.8f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v2, "lng"

    const-string v3, "%.8f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    iget-object v1, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_53

    const-string v1, "query"

    iget-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_53
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    const-string v1, "place_name"

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v1, "place_id"

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_a
.end method

.method static synthetic b(Lcom/instagram/android/creation/d;)Lcom/instagram/android/a/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V

    :cond_a
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->h:Ljava/lang/String;

    :cond_1a
    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "venues"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    const-string v2, "isFoursquareLocation"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/a/d;->a(Ljava/util/List;Z)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/a/d;->b()V

    goto :goto_33
.end method

.method private c()Landroid/location/Location;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->a()Landroid/location/Location;

    move-result-object v0

    goto :goto_18
.end method

.method static synthetic c(Lcom/instagram/android/creation/d;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-object v0
.end method

.method private d()Landroid/location/Location;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INTENT_EXTRA_PHOTO_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic d(Lcom/instagram/android/creation/d;)Landroid/location/Location;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->V()V

    return-void
.end method

.method static synthetic h(Lcom/instagram/android/creation/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->U()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v3, 0x0

    sget v0, Lcom/facebook/aw;->fragment_nearby_venues:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_84

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/d;->a(Landroid/view/LayoutInflater;)V

    :goto_35
    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/a/c;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/instagram/android/creation/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/g;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->action_bar_button_refresh:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    new-instance v2, Lcom/instagram/android/creation/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/h;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->action_bar_dark_button_background:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v2, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_83
    return-object v1

    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u201c"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u201d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "searchString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/instagram/android/a/d;

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/a/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    new-instance v2, Lcom/instagram/android/creation/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/i;-><init>(Lcom/instagram/android/creation/d;)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/creation/d;->i:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_4b

    if-eqz p1, :cond_4b

    const-string v0, "currentSearch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    :cond_4b
    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "NearbyVenuesFragment.VENUE_CLEARED"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    const-string v0, "currentSearch"

    iget-object v1, p0, Lcom/instagram/android/creation/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "nearby_venues"

    return-object v0
.end method

.method public final j_()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->c()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/creation/d;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    if-eqz v1, :cond_24

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/creation/d;->d:Lcom/instagram/android/a/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/d;->a(Landroid/location/Location;)V

    :goto_1e
    iget-object v0, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/instagram/android/creation/d;->a(Landroid/location/Location;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-direct {p0}, Lcom/instagram/android/creation/d;->V()V

    goto :goto_1e
.end method

.method public final k_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->U()V

    invoke-direct {p0}, Lcom/instagram/android/creation/d;->W()V

    return-void
.end method

.method public final l_()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iget-object v0, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V

    :cond_11
    iput-object v2, p0, Lcom/instagram/android/creation/d;->f:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/instagram/android/creation/d;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/instagram/android/creation/d;->e:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v2, p0, Lcom/instagram/android/creation/d;->g:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-void
.end method
