.class public Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
.super Lcom/bbm/ui/activities/ail;
.source "ViewSubscribedChannelActivity.java"


# instance fields
.field private final j:Lcom/bbm/j/u;

.field private final k:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ail;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/ajs;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajs;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->j:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/ajt;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajt;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->k:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Lcom/bbm/ui/activities/ajx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajx;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_16

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->a(I)V

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->j:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_6

    nop

    :pswitch_data_16
    .packed-switch 0x7f0a0040
        :pswitch_7
    .end packed-switch
.end method

.method protected final a(Lcom/bbm/ui/c/fm;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b(Lcom/bbm/ui/c/fm;)V

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/bbm/ui/c/fm;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->b(Lcom/bbm/ui/c/fm;)V

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f0a0040

    const v2, 0x7f020271

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e0557

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/ajv;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/ajv;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;Lcom/bbm/ui/slidingmenu/a;)V

    invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f020219

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->d:Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->d:Lcom/bbm/ui/slidingmenu/a;

    invoke-virtual {p1, v0, v4, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->g:Lcom/bbm/ui/c/fq;

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/ajw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajw;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final d()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    const/16 v0, 0x64

    if-ne p1, v0, :cond_b

    invoke-static {p0, p3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :goto_a
    return-void

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ail;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ail;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0203bc

    const v3, 0x7f0e0557

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0040

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->f:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->e:Lcom/bbm/ui/a/a;

    iget-object v1, v1, Lcom/bbm/ui/a/a;->e:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/bbm/ui/activities/aju;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/aju;-><init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/ail;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->c()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V

    return-void
.end method
