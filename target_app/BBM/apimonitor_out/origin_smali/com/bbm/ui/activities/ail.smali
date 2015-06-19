.class public abstract Lcom/bbm/ui/activities/ail;
.super Lcom/bbm/ui/activities/cn;
.source "ViewChannelActivity.java"


# static fields
.field public static a:I


# instance fields
.field protected b:Lcom/bbm/ui/FooterActionBar;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/slidingmenu/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/bbm/ui/slidingmenu/a;

.field protected e:Lcom/bbm/ui/a/a;

.field protected final f:Lcom/bbm/ui/cj;

.field protected final g:Lcom/bbm/ui/c/fq;

.field protected h:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/ek;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    sput v0, Lcom/bbm/ui/activities/ail;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v0, Lcom/bbm/ui/activities/aim;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aim;-><init>(Lcom/bbm/ui/activities/ail;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->f:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/ain;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ain;-><init>(Lcom/bbm/ui/activities/ail;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->g:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/aio;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aio;-><init>(Lcom/bbm/ui/activities/ail;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ail;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method protected static a(Lcom/bbm/ui/slidingmenu/a;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->a()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->d()V

    :cond_c
    return-void
.end method

.method protected a(I)V
    .registers 5

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_58

    :goto_4
    return-void

    :sswitch_5
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/ChannelDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bbm_channel_uri"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ail;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :sswitch_20
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/ac;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_2f
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->f()V

    goto :goto_4

    :sswitch_3a
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_49
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/ac;->d(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_data_58
    .sparse-switch
        0x7f0a0032 -> :sswitch_2f
        0x7f0a0033 -> :sswitch_20
        0x7f0a0041 -> :sswitch_49
        0x7f0a0045 -> :sswitch_3a
        0x7f0a004f -> :sswitch_5
    .end sparse-switch
.end method

.method protected b(Lcom/bbm/ui/c/fm;)V
    .registers 8

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->c:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a004f

    const v3, 0x7f0202d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e076b

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->c:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0033

    const v3, 0x7f020257

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e01fa

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ail;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f()V
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bbm/util/ac;->b(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public finish()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->e()V

    :cond_9
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/cn;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_10

    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    new-instance v0, Lcom/bbm/ui/activities/aiq;

    invoke-direct {v0, p0, p3}, Lcom/bbm/ui/activities/aiq;-><init>(Lcom/bbm/ui/activities/ail;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ail;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->j:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/w;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ail;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/az;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ail;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ail;->h:Lcom/bbm/j/x;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onDestroy()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->f()V

    iput-object v1, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    :cond_14
    iput-object v1, p0, Lcom/bbm/ui/activities/ail;->j:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/bbm/ui/activities/ail;->h:Lcom/bbm/j/x;

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->e:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->f()V

    :cond_11
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/ail;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_10
    new-instance v0, Lcom/bbm/ui/activities/aip;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aip;-><init>(Lcom/bbm/ui/activities/ail;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method
