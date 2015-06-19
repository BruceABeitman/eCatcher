.class final Lcom/bbm/ui/activities/abf;
.super Ljava/lang/Object;
.source "PaymentSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/PaymentSwitcherActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abf;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/abf;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->launchCarrierBillingPayment(Landroid/view/View;)V

    return-void
.end method
