.class final Lcom/bbm/ui/activities/bx;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->n(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_1a
    .packed-switch 0x7f0a0670
        :pswitch_9
    .end packed-switch
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_11
    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->m(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->m(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->o(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/cj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J

    iget-object v0, p0, Lcom/bbm/ui/activities/bx;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->notifyDataSetChanged()V

    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
