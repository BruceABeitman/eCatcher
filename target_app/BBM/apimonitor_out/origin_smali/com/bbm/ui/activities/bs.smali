.class final Lcom/bbm/ui/activities/bs;
.super Lcom/bbm/ui/cj;
.source "ChangeStatusActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const-wide/16 v2, -0x1

    packed-switch p1, :pswitch_data_52

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "footer add new"

    const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->g(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->i(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v2, v3}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J

    goto :goto_5

    :cond_24
    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->g(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v2, v3}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/bbm/ui/activities/bs;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_5

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
