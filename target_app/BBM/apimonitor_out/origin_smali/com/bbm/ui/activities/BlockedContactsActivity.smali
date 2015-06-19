.class public Lcom/bbm/ui/activities/BlockedContactsActivity;
.super Lcom/bbm/ui/activities/ev;
.source "BlockedContactsActivity.java"

# interfaces
.implements Lcom/bbm/ui/fs;


# instance fields
.field protected a:Lcom/bbm/d/a;

.field final b:Landroid/os/Handler;

.field private c:Lcom/bbm/ui/c/i;

.field private d:Lcom/bbm/ui/c/j;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-class v0, Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    iput-object v1, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private b(I)V
    .registers 6

    const/16 v3, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    invoke-virtual {v2}, Lcom/bbm/ui/c/j;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    invoke-virtual {v2}, Lcom/bbm/ui/c/j;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    :cond_27
    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    invoke-virtual {v2}, Lcom/bbm/ui/c/i;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    invoke-virtual {v2}, Lcom/bbm/ui/c/i;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_41
    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    :cond_43
    packed-switch p1, :pswitch_data_6c

    :goto_46
    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :pswitch_50
    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    if-nez v0, :cond_5b

    new-instance v0, Lcom/bbm/ui/c/i;

    invoke-direct {v0}, Lcom/bbm/ui/c/i;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    :cond_5b
    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    goto :goto_46

    :pswitch_5e
    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    if-nez v0, :cond_69

    new-instance v0, Lcom/bbm/ui/c/j;

    invoke-direct {v0}, Lcom/bbm/ui/c/j;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    :cond_69
    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    goto :goto_46

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_5e
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->d:Lcom/bbm/ui/c/j;

    iget-object v0, v0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->c()V

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->c:Lcom/bbm/ui/c/i;

    iget-object v0, v0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->c()V

    :cond_16
    return-void
.end method

.method public final a(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/BlockedContactsActivity;->b(I)V

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/BlockedContactsActivity;->a:Lcom/bbm/d/a;

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    new-instance v1, Lcom/bbm/ui/activities/ac;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ac;-><init>(Lcom/bbm/ui/activities/BlockedContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SegmentedControl;

    invoke-virtual {v0, p0}, Lcom/bbm/ui/SegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/fs;)V

    invoke-direct {p0, v2}, Lcom/bbm/ui/activities/BlockedContactsActivity;->b(I)V

    return-void
.end method
