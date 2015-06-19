.class public Lcom/bbm/ui/activities/StoreActivity;
.super Lcom/bbm/ui/activities/ev;
.source "StoreActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/c/gz;

.field private final b:Lcom/bbm/ui/cj;

.field private final c:Lcom/bbm/ui/c/fq;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/aie;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aie;-><init>(Lcom/bbm/ui/activities/StoreActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/StoreActivity;->b:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/aif;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aif;-><init>(Lcom/bbm/ui/activities/StoreActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/StoreActivity;->c:Lcom/bbm/ui/c/fq;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/StoreActivity;)V
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const/4 v3, 0x1

    const v4, 0x7f02025a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0624

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/StoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1, v6, v6}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/StoreActivity;->c:Lcom/bbm/ui/c/fq;

    iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->o()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/StoreActivity;)Lcom/bbm/ui/c/gz;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/StoreActivity;->a:Lcom/bbm/ui/c/gz;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StoreActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    new-instance v0, Lcom/bbm/ui/c/gz;

    invoke-direct {v0}, Lcom/bbm/ui/c/gz;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/StoreActivity;->a:Lcom/bbm/ui/c/gz;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "updateAfterPurchase"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "updateAfterPurchase"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/StoreActivity;->a:Lcom/bbm/ui/c/gz;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/c/gz;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a030d

    iget-object v2, p0, Lcom/bbm/ui/activities/StoreActivity;->a:Lcom/bbm/ui/c/gz;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_50
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/activities/aid;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aid;-><init>(Lcom/bbm/ui/activities/StoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v1, p0, Lcom/bbm/ui/activities/StoreActivity;->b:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pack_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pack_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/StickerDetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pack_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "view_source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string v0, "viewSource"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "view_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_ad
    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/StoreActivity;->startActivity(Landroid/content/Intent;)V

    :cond_b0
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/StoreActivity;->a:Lcom/bbm/ui/c/gz;

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    return-void
.end method
