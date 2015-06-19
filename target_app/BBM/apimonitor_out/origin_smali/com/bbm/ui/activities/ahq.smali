.class final Lcom/bbm/ui/activities/ahq;
.super Lcom/bbm/j/k;
.source "SponsoredAdActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SponsoredAdActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SponsoredAdActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 12

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SponsoredAdActivity;->b(Lcom/bbm/ui/activities/SponsoredAdActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bbm/b/q;->b(Ljava/lang/String;)Lcom/bbm/b/a;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->a(Lcom/bbm/ui/activities/SponsoredAdActivity;Lcom/bbm/b/a;)Lcom/bbm/b/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_24

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v0, v3, :cond_43

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v0

    iget-wide v3, v0, Lcom/bbm/b/a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_bc

    :cond_43
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->d(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/t;

    move-result-object v3

    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f03011e

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    const v4, 0x7f0a0578

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Lcom/bbm/ui/t;->c:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    iget-object v0, v3, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    if-eqz v0, :cond_b0

    iget-object v0, v3, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->a()V

    iget-object v0, v3, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setBackActionEnabled(Z)V

    iget-object v0, v3, Lcom/bbm/ui/t;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    :cond_b0
    iget-object v0, v3, Lcom/bbm/ui/t;->a:Lcom/slidingmenu/lib/a/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_23

    :cond_bc
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/b/a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->a(Lcom/bbm/ui/activities/SponsoredAdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->f(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/util/b/g;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;

    const-string v4, "interstitialImage"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SponsoredAdActivity;->e(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->g(Lcom/bbm/ui/activities/SponsoredAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;

    const-string v4, "interstitialHeader"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->g(Lcom/bbm/ui/activities/SponsoredAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->h(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/b/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;

    sget-object v3, Lcom/bbm/b/c;->b:Lcom/bbm/b/c;

    if-ne v0, v3, :cond_181

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    new-instance v3, Lcom/bbm/ui/activities/ahr;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ahr;-><init>(Lcom/bbm/ui/activities/ahq;)V

    invoke-static {v0, v3}, Lcom/bbm/ui/activities/SponsoredAdActivity;->a(Lcom/bbm/ui/activities/SponsoredAdActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_12d
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->i(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/b;

    move-result-object v0

    sget-object v3, Lcom/bbm/b/b;->a:Lcom/bbm/b/b;

    if-ne v0, v3, :cond_155

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->h(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->C(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v4, :cond_187

    move v0, v1

    :goto_152
    invoke-virtual {v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    :cond_155
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->j(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/ui/ActionBarItem;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bbm/b/a;->m:Z

    if-eqz v1, :cond_189

    :goto_165
    invoke-virtual {v0, v2}, Lcom/bbm/ui/ActionBarItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SponsoredAdActivity;->k(Lcom/bbm/ui/activities/SponsoredAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SponsoredAdActivity;->c(Lcom/bbm/ui/activities/SponsoredAdActivity;)Lcom/bbm/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;

    const-string v2, "interstitialDescription"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    :cond_181
    iget-object v0, p0, Lcom/bbm/ui/activities/ahq;->a:Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-static {v0, v9}, Lcom/bbm/ui/activities/SponsoredAdActivity;->a(Lcom/bbm/ui/activities/SponsoredAdActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_12d

    :cond_187
    move v0, v2

    goto :goto_152

    :cond_189
    const/16 v2, 0x8

    goto :goto_165
.end method
