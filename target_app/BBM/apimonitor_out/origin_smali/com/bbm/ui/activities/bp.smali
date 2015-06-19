.class final Lcom/bbm/ui/activities/bp;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "mOnRootClickListner onClick"

    const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->d(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/EditText;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->f(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/activities/by;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/ge;

    iget-object v2, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/d/ge;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bp;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    goto :goto_21
.end method
