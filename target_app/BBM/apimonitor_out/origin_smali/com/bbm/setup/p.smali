.class final Lcom/bbm/setup/p;
.super Ljava/lang/Object;
.source "PykInviteFriendsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/PykInviteFriendsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/PykInviteFriendsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/j;

    invoke-virtual {v0}, Lcom/bbm/iceberg/j;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/c/c;->c()V

    iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;

    iget-object v2, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;

    const v3, 0x7f0e0681

    invoke-virtual {v2, v3}, Lcom/bbm/setup/PykInviteFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;

    invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a(Lcom/bbm/iceberg/j;)V

    :goto_2e
    return-void

    :cond_2f
    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    iget v2, v1, Lcom/bbm/c/c;->al:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/bbm/c/c;->al:I

    iget-object v1, p0, Lcom/bbm/setup/p;->a:Lcom/bbm/setup/PykInviteFriendsActivity;

    invoke-static {v1, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Lcom/bbm/iceberg/j;)V

    goto :goto_2e
.end method