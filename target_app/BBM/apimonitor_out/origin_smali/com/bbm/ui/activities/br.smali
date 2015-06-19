.class final Lcom/bbm/ui/activities/br;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/br;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    const-string v0, "onFocusChange"

    const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    if-nez p2, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/activities/br;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/activities/br;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/bbm/ui/activities/br;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->g(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/bbm/ui/activities/br;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->h(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    goto :goto_30
.end method
