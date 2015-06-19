.class final Lcom/bbm/ui/activities/abg;
.super Ljava/lang/Object;
.source "PaymentSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/PaymentSwitcherActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abg;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/abg;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->finish()V

    return-void
.end method
