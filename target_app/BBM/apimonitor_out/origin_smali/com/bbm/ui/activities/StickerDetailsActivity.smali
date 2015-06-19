.class public Lcom/bbm/ui/activities/StickerDetailsActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "StickerDetailsActivity.java"


# instance fields
.field private a:Landroid/app/Fragment;

.field private b:Lcom/bbm/l/a;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const-string v0, "onActivityResult"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->b:Lcom/bbm/l/a;

    invoke-static {p1, p2, p3}, Lcom/bbm/l/a;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V

    :goto_12
    return-void

    :cond_13
    const-string v0, "onActivityResult handled by PaymentController."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->a(Z)V

    goto :goto_12
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onBackPressed()V

    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pack_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_1b
    const-string v3, "Must provide a sticker pack ID to activity"

    invoke-static {p0, v1, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_23
    return-void

    :cond_24
    move v1, v2

    goto :goto_1b

    :cond_26
    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "showStickerDetail"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "updateAfterPurchase"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewSource"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/bbm/c/q;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "storeGridLocation"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "externalStickerId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/bbm/ui/c/fu;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/bbm/c/q;ILjava/lang/String;)Lcom/bbm/ui/c/fu;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->a:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a030b

    iget-object v2, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->a:Landroid/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7a
    const v0, 0x7f0a030c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/StickerDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/activities/aic;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aic;-><init>(Lcom/bbm/ui/activities/StickerDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->d:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/bbm/l/a;->a(Landroid/content/Context;)Lcom/bbm/l/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->b:Lcom/bbm/l/a;

    goto :goto_23
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->b:Lcom/bbm/l/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->b:Lcom/bbm/l/a;

    invoke-static {}, Lcom/bbm/l/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/StickerDetailsActivity;->b:Lcom/bbm/l/a;

    :cond_c
    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    invoke-static {p0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    :cond_d
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    return-void
.end method
