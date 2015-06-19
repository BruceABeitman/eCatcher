.class public Lcom/bbm/ui/activities/PaymentSwitcherActivity;
.super Landroid/app/Activity;
.source "PaymentSwitcherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchCarrierBillingPayment(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/CarrierBillingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_14
    sget-object v1, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;

    iget v1, v1, Lcom/bbm/l/d/d;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    sget-object v0, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;

    iget v0, v0, Lcom/bbm/l/d/d;->d:I

    if-ne p1, v0, :cond_d

    invoke-virtual {p0, p2, p3}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->finish()V

    :goto_c
    return-void

    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->setContentView(I)V

    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/bbm/ui/activities/abf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abf;-><init>(Lcom/bbm/ui/activities/PaymentSwitcherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    const v0, 0x7f0a0270

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2f

    new-instance v1, Lcom/bbm/ui/activities/abg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abg;-><init>(Lcom/bbm/ui/activities/PaymentSwitcherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2f
    return-void
.end method
