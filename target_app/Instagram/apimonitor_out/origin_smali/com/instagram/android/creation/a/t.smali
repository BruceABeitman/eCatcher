.class public final Lcom/instagram/android/creation/a/t;
.super Lcom/instagram/base/a/b;
.source "FollowersShareFragment.java"

# interfaces
.implements Lcom/instagram/android/widget/v;


# instance fields
.field a:Ljava/util/Observer;

.field private aa:Landroid/view/View;

.field private ab:Lcom/instagram/android/creation/a/a;

.field private ac:Lcom/instagram/creation/b/a/b;

.field private ad:Landroid/location/Location;

.field private ae:Lcom/instagram/venue/model/Venue;

.field private af:Landroid/location/Location;

.field private ag:Z

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/widget/x;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Z

.field private aj:Lcom/instagram/common/c/h;

.field private ak:Lcom/instagram/android/creation/a/af;

.field private al:Lcom/instagram/android/creation/a/ag;

.field private am:Lcom/facebook/b/e;

.field private an:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/instagram/android/widget/x;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ao:Landroid/os/Handler;

.field private ap:Lcom/instagram/android/creation/a;

.field b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/widget/CompoundButton;

.field private d:Lcom/instagram/android/widget/s;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CompoundButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Lcom/instagram/android/creation/a/af;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/af;-><init>(Lcom/instagram/android/creation/a/t;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ak:Lcom/instagram/android/creation/a/af;

    new-instance v0, Lcom/instagram/android/creation/a/ag;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/ag;-><init>(Lcom/instagram/android/creation/a/t;B)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->al:Lcom/instagram/android/creation/a/ag;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->an:Ljava/util/Map;

    new-instance v0, Lcom/instagram/android/creation/a/u;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/u;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    new-instance v0, Lcom/instagram/android/creation/a/w;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/w;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ao:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/creation/a/x;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/x;-><init>(Lcom/instagram/android/creation/a/t;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private U()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/instagram/android/creation/a/t;->ag:Z

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->b(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ao:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private V()V
    .registers 5

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->W()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ao:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0, v1}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    goto :goto_6

    :cond_29
    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->locating:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->a:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->a(Ljava/util/Observer;)Lcom/instagram/android/g/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ag:Z

    goto :goto_6
.end method

.method private W()Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->X()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Y()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private X()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ad:Landroid/location/Location;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private Y()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ad:Landroid/location/Location;

    return-object v0
.end method

.method private Z()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/facebook/b/e;)Lcom/facebook/b/e;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->am:Lcom/facebook/b/e;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Lcom/instagram/venue/model/Venue;)Lcom/instagram/venue/model/Venue;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ah:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/location/Location;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->U()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->f()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Landroid/view/View;

    new-instance v1, Lcom/instagram/android/creation/a/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/v;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/b;->a(D)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/b/a/b;->b(D)V

    goto :goto_e
.end method

.method private a(Landroid/view/View;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v1, 0x0

    new-instance v0, Lcom/instagram/android/creation/a;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-direct {v0, v2, p1, p0}, Lcom/instagram/android/creation/a;-><init>(Lcom/instagram/creation/b/a/b;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ap:Lcom/instagram/android/creation/a;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ap:Lcom/instagram/android/creation/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a;->a()V

    sget v0, Lcom/facebook/av;->caption_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/a/ab;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ab;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/instagram/android/widget/s;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->ah:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/instagram/android/widget/s;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, p0}, Lcom/instagram/android/widget/s;->setOnSharingToggleListener(Lcom/instagram/android/widget/v;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v2, v0, v1, v0, v1}, Lcom/instagram/android/widget/s;->setPadding(IIII)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    sget v0, Lcom/facebook/av;->followers_share_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->z()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/creation/b/a/b;)V

    :cond_63
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/instagram/android/creation/a/ac;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ac;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->n()Z

    move-result v0

    if-eqz v0, :cond_f9

    const/4 v0, 0x1

    :goto_8f
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9d
    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->d()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/creation/a/ad;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ad;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_fb

    sget v0, Lcom/facebook/av;->metadata_row_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/instagram/android/creation/a/ae;

    invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ae;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->metadata_textview_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ab()V

    :goto_cf
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_105

    new-instance v0, Lcom/instagram/android/creation/a/a;

    invoke-direct {v0, p1}, Lcom/instagram/android/creation/a/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->ab:Lcom/instagram/android/creation/a/a;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ab:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/a;->a(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ab:Lcom/instagram/android/creation/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/a;->a()V

    sget v0, Lcom/facebook/av;->tab_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_f8
    return-void

    :cond_f9
    move v0, v1

    goto :goto_8f

    :cond_fb
    sget v0, Lcom/facebook/av;->metadata_row_people:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cf

    :cond_105
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f8
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method private a(Lcom/instagram/venue/model/Venue;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ag:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_24
.end method

.method static synthetic a(Lcom/instagram/android/creation/a/t;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ag:Z

    return v0
.end method

.method private aa()V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_url"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "people_tags"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v2

    const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/creation/a/t;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method private ab()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->E()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    if-ne v0, v2, :cond_31

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/model/people/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->people_tagging_x_people:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/model/people/b;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/creation/a/t;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_4f
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30
.end method

.method private ac()V
    .registers 4

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->c()Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ad:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/android/creation/a/t;)Landroid/widget/CompoundButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/t;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    return-object p1
.end method

.method private c()Lcom/instagram/common/analytics/b;
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/instagram/common/analytics/b;

    const-string v0, "upload_media"

    invoke-direct {v4, v0, p0}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "test_group"

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->z()Z

    move-result v0

    if-eqz v0, :cond_a8

    move v0, v2

    :goto_16
    invoke-virtual {v4, v1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    sget-object v0, Lcom/instagram/o/a;->c:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v5

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/x;

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_button_state_enter"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->an:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ab

    move v1, v2

    :goto_5d
    invoke-virtual {v4, v7, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_button_state_exit"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v1

    if-eqz v1, :cond_ad

    move v1, v2

    :goto_80
    invoke-virtual {v4, v7, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "_button_state"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v7}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v0

    if-eqz v0, :cond_af

    move v0, v2

    :goto_a3
    invoke-virtual {v5, v1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    goto/16 :goto_25

    :cond_a8
    move v0, v3

    goto/16 :goto_16

    :cond_ab
    move v1, v3

    goto :goto_5d

    :cond_ad
    move v1, v3

    goto :goto_80

    :cond_af
    move v0, v3

    goto :goto_a3

    :cond_b1
    invoke-virtual {v5}, Lcom/instagram/common/analytics/b;->a()V

    return-object v4
.end method

.method static synthetic c(Lcom/instagram/android/creation/a/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ac()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/creation/a/t;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method static synthetic e(Lcom/instagram/android/creation/a/t;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ah:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/creation/a/t;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->an:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/creation/a/t;)Lcom/instagram/android/widget/s;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/creation/a/t;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    return v0
.end method

.method static synthetic i(Lcom/instagram/android/creation/a/t;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Z()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/instagram/android/creation/a/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->V()V

    return-void
.end method

.method static synthetic k(Lcom/instagram/android/creation/a/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->d()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/creation/a/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->aa()V

    return-void
.end method


# virtual methods
.method public final F()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    iget-boolean v0, p0, Lcom/instagram/android/creation/a/t;->ai:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ap:Lcom/instagram/android/creation/a;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    return-void
.end method

.method public final G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->G()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->fragment_followers_share_metadata:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->geotagTextView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->geotagCheckBox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    sget v0, Lcom/facebook/av;->metadata_row_location:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->e:Landroid/view/View;

    sget v0, Lcom/facebook/av;->nameLocationCheckBox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/widget/CompoundButton;

    sget v0, Lcom/facebook/av;->metadata_row_add_to_your_your_photomap:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/view/View;

    sget v0, Lcom/facebook/av;->view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->aa:Landroid/view/View;

    return-object v1
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 6

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    const-string v0, "people_tags"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->ab()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->am:Lcom/facebook/b/e;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/instagram/android/widget/r;->a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    goto :goto_15
.end method

.method public final a(Landroid/content/Context;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "FollowersShareFragment.INTENT_ACTION_SHARE_EVENT"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ak:Lcom/instagram/android/creation/a/af;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->al:Lcom/instagram/android/creation/a/ag;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/a/t;->aj:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aj:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/y;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/y;-><init>(Lcom/instagram/android/creation/a/t;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/android/creation/a/aa;

    invoke-direct {v1, p0, p2, p1}, Lcom/instagram/android/creation/a/aa;-><init>(Lcom/instagram/android/creation/a/t;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/instagram/android/widget/x;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->am:Lcom/facebook/b/e;

    invoke-virtual {p1, v0, p0, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    invoke-virtual {p1}, Lcom/instagram/android/widget/x;->f()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p1, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/k/b/a;->a(Ljava/lang/String;Z)V

    :cond_25
    return-void
.end method

.method public final a(Lcom/instagram/venue/model/Venue;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/venue/model/Venue;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, p2}, Lcom/instagram/creation/b/a/b;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->c(Z)V

    :cond_16
    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V

    :cond_2d
    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->X()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->Y()Landroid/location/Location;

    move-result-object v0

    :goto_b
    invoke-virtual {p0}, Lcom/instagram/android/creation/a/t;->r()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/instagram/android/creation/d;->a(Landroid/support/v4/app/s;Ljava/lang/String;Landroid/location/Location;)V

    return-void

    :cond_17
    move-object v0, v1

    goto :goto_b
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "location"

    iget-object v1, p0, Lcom/instagram/android/creation/a/t;->af:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->h(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ac:Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->ae:Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/venue/model/Venue;)V

    :cond_c
    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "metadata_followers_share"

    return-object v0
.end method

.method public final k_()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->U()V

    invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V

    return-void
.end method

.method public final l_()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    invoke-direct {p0}, Lcom/instagram/android/creation/a/t;->U()V

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->d:Lcom/instagram/android/widget/s;

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->c:Landroid/widget/CompoundButton;

    :cond_14
    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->f:Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->h:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->ap:Lcom/instagram/android/creation/a;

    iput-object v1, p0, Lcom/instagram/android/creation/a/t;->ab:Lcom/instagram/android/creation/a/a;

    return-void
.end method

.method public final p_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/t;->aj:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    return-void
.end method
