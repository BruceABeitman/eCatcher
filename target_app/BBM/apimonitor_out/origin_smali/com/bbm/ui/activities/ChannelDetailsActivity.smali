.class public Lcom/bbm/ui/activities/ChannelDetailsActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelDetailsActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/c/l;

.field private b:Lcom/bbm/ui/FooterActionBar;

.field private final c:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v0, Lcom/bbm/ui/activities/cp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/cp;-><init>(Lcom/bbm/ui/activities/ChannelDetailsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->c:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelDetailsActivity;I)V
    .registers 4

    packed-switch p1, :pswitch_data_e

    :goto_3
    return-void

    :pswitch_4
    const/16 v0, 0x3e9

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_3

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected final d()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a:Lcom/bbm/ui/c/l;

    iget-object v1, v0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v1, v0, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v1, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v1, v0, Lcom/bbm/ui/c/l;->a:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    iget-object v1, v0, Lcom/bbm/ui/c/l;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    invoke-virtual {v0}, Lcom/bbm/ui/c/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/cn;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->setContentView(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->c:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/c/l;

    invoke-direct {v1}, Lcom/bbm/ui/c/l;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a:Lcom/bbm/ui/c/l;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a:Lcom/bbm/ui/c/l;

    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iput-object v2, v1, Lcom/bbm/ui/c/l;->c:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a:Lcom/bbm/ui/c/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelDetailsActivity;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bbm/ui/c/l;->d:Ljava/lang/String;

    const v1, 0x7f0a00fd

    iget-object v2, p0, Lcom/bbm/ui/activities/ChannelDetailsActivity;->a:Lcom/bbm/ui/c/l;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
