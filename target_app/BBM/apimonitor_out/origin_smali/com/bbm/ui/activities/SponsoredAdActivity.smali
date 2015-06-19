.class public Lcom/bbm/ui/activities/SponsoredAdActivity;
.super Lcom/bbm/ui/activities/ev;
.source "SponsoredAdActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/bbm/ui/HeaderButtonActionBar;

.field private e:Lcom/bbm/ui/FooterActionBar;

.field private f:Lcom/bbm/ui/ActionBarItem;

.field private g:Lcom/bbm/ui/t;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/bbm/ui/ObservingImageView;

.field private j:Ljava/lang/String;

.field private k:Lcom/bbm/b/b;

.field private l:Lcom/bbm/b/c;

.field private m:Z

.field private n:Ljava/lang/Runnable;

.field private o:Lcom/bbm/util/b/g;

.field private p:Lcom/bbm/b/a;

.field private final q:Lcom/bbm/ui/cj;

.field private final r:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/aho;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aho;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->q:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/ahq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahq;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->r:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SponsoredAdActivity;Lcom/bbm/b/a;)Lcom/bbm/b/a;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SponsoredAdActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->n:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SponsoredAdActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.onlyone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.bbm.adidtoshare"

    iget-object v2, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/SponsoredAdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/t;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->g:Lcom/bbm/ui/t;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->i:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/util/b/g;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->o:Lcom/bbm/util/b/g;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/SponsoredAdActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/b;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/ActionBarItem;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->f:Lcom/bbm/ui/ActionBarItem;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/SponsoredAdActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->finish()V

    return-void
.end method

.method static synthetic m(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    iget-object v0, v0, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;

    const-string v1, "interstitialBrowseUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/activities/ahv;->a:[I

    iget-object v2, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    invoke-static {v2}, Lcom/bbm/b/e;->b(Lcom/bbm/b/a;)Lcom/bbm/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/b/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    const-string v0, "Sponsored Ad activity, unspecific type handled"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    sget-object v2, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;

    iget-object v3, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V

    goto :goto_27

    :pswitch_34
    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    sget-object v2, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;

    iget-object v3, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    iget-boolean v3, v3, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->finish()V

    goto :goto_27

    :pswitch_48
    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->p:Lcom/bbm/b/a;

    iget-boolean v2, v2, Lcom/bbm/b/a;->n:Z

    sget-object v3, Lcom/bbm/b/e;->b:Lcom/bbm/b/aj;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/b/aj;Landroid/app/Activity;)V

    goto :goto_27

    :pswitch_56
    const-string v0, "Sponsored Ad activity, DisplayNoInterstitialAd type handled"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_27

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_34
        :pswitch_48
        :pswitch_48
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_46

    const/16 v0, 0x8

    if-ne p1, v0, :cond_46

    const-string v0, "com.bbm.selectedcontacts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.bbm.resultadid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Requesting chat with user %s and ad %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;

    move-result-object v2

    new-instance v3, Lcom/bbm/ui/activities/ahp;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/bbm/ui/activities/ahp;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;Lcom/google/b/f/a/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v1, 0x1

    const v10, 0x7f0e05ff

    const v9, 0x7f0e0149

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sponsored_ad_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sponsored_ad_subtype"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/b;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sponsored_ad_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bbm/b/c;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sponsored_ad_has_interstitial"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    iput-object p0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    move v0, v1

    :goto_55
    const-string v3, "No sponsored ad ID specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :goto_5d
    return-void

    :cond_5e
    move v0, v2

    goto :goto_55

    :cond_60
    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/bbm/ui/activities/ahs;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ahs;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->i:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->i:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bbm/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/bbm/ui/t;

    invoke-direct {v0, p0}, Lcom/bbm/ui/t;-><init>(Lcom/slidingmenu/lib/a/a;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->g:Lcom/bbm/ui/t;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/ahw;->b(Landroid/content/Intent;)Lcom/bbm/ui/activities/ahw;

    move-result-object v4

    const-string v3, ""

    const-string v0, ""

    sget-object v5, Lcom/bbm/ui/activities/ahv;->b:[I

    invoke-virtual {v4}, Lcom/bbm/ui/activities/ahw;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_2c8

    :goto_bb
    new-instance v4, Lcom/bbm/ui/HeaderButtonActionBar;

    const-string v5, ""

    invoke-direct {v4, p0, v5, v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    const/high16 v3, 0x4190

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitleFontSize(F)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v3, Lcom/bbm/ui/activities/aht;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/aht;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v3, Lcom/bbm/ui/activities/ahu;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ahu;-><init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitleTextStyle(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->e:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    new-instance v0, Lcom/bbm/ui/ActionBarItem;

    const v1, 0x7f0202be

    const v3, 0x7f0e068e

    invoke-direct {v0, p0, v1, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->f:Lcom/bbm/ui/ActionBarItem;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->f:Lcom/bbm/ui/ActionBarItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->f:Lcom/bbm/ui/ActionBarItem;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->q:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->g:Lcom/bbm/ui/t;

    iget-object v1, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iput-object v1, v0, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v0, Lcom/bbm/util/b/g;

    invoke-direct {v0, p0, v8}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->o:Lcom/bbm/util/b/g;

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->o:Lcom/bbm/util/b/g;

    iput-boolean v2, v0, Lcom/bbm/util/b/i;->j:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->o:Lcom/bbm/util/b/g;

    new-instance v1, Lcom/bbm/util/b/f;

    invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->o:Lcom/bbm/util/b/g;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(I)V

    goto/16 :goto_5d

    :pswitch_14e
    sget-object v4, Lcom/bbm/ui/activities/ahv;->a:[I

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    iget-object v6, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    iget-boolean v7, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-static {v5, v6, v7}, Lcom/bbm/b/e;->a(Lcom/bbm/b/c;Lcom/bbm/b/b;Z)Lcom/bbm/b/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbm/b/p;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2d4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set the header\'s action button label from Invite because ad subtype is not recognized; adId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adSubtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_bb

    :pswitch_19f
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e05fd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bb

    :pswitch_1b4
    sget-object v4, Lcom/bbm/ui/activities/ahv;->a:[I

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    iget-object v6, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    iget-boolean v7, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-static {v5, v6, v7}, Lcom/bbm/b/e;->a(Lcom/bbm/b/c;Lcom/bbm/b/b;Z)Lcom/bbm/b/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbm/b/p;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2dc

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set the header\'s action button label from Chat because ad subtype is not recognized; adId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adSubtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_bb

    :pswitch_205
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0769

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :pswitch_21a
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :pswitch_22f
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e05fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :pswitch_244
    sget-object v4, Lcom/bbm/ui/activities/ahv;->a:[I

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    iget-object v6, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    iget-boolean v7, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-static {v5, v6, v7}, Lcom/bbm/b/e;->a(Lcom/bbm/b/c;Lcom/bbm/b/b;Z)Lcom/bbm/b/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bbm/b/p;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2e8

    :pswitch_259
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set the header\'s action button label from Update because ad subtype is not recognized; adId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adSubtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->k:Lcom/bbm/b/b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->l:Lcom/bbm/b/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->m:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_bb

    :pswitch_295
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0769

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :pswitch_2aa
    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e04bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_bb

    :pswitch_2bf
    const-string v4, "Failed to find out where ad is launched"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_bb

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_14e
        :pswitch_1b4
        :pswitch_244
        :pswitch_2bf
    .end packed-switch

    :pswitch_data_2d4
    .packed-switch 0x2
        :pswitch_19f
        :pswitch_19f
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_205
        :pswitch_22f
        :pswitch_22f
        :pswitch_21a
    .end packed-switch

    :pswitch_data_2e8
    .packed-switch 0x1
        :pswitch_295
        :pswitch_259
        :pswitch_259
        :pswitch_2aa
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/SponsoredAdActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
