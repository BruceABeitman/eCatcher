.class final Lcom/bbm/ui/activities/bo;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChangeStatusActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string v0, "mItemLongClickListener onItemLongClick"

    const-class v1, Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/by;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ge;

    iget-wide v2, v0, Lcom/bbm/d/ge;->a:J

    invoke-static {v1, v2, v3}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J

    iget-object v0, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->c(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_33
    iget-object v0, p0, Lcom/bbm/ui/activities/bo;->a:Lcom/bbm/ui/activities/ChangeStatusActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->notifyDataSetChanged()V

    const/4 v0, 0x0

    return v0
.end method
