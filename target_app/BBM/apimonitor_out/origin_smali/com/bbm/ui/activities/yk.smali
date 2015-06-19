.class final Lcom/bbm/ui/activities/yk;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/yj;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/yj;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/yk;->a:Lcom/bbm/ui/activities/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "mOnSubCatItemClickListener onItemClick"

    const-class v1, Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/yk;->a:Lcom/bbm/ui/activities/yj;

    iget-object v0, v0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/yk;->a:Lcom/bbm/ui/activities/yj;

    iget-object v1, v1, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v1

    if-ltz v1, :cond_20

    iget-object v1, p0, Lcom/bbm/ui/activities/yk;->a:Lcom/bbm/ui/activities/yj;

    iget-object v1, v1, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v1

    if-ne v1, p3, :cond_20

    const/4 p3, -0x1

    :cond_20
    invoke-static {v0, p3}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;I)I

    iget-object v0, p0, Lcom/bbm/ui/activities/yk;->a:Lcom/bbm/ui/activities/yj;

    iget-object v0, v0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->l(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/activities/yr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/yr;->notifyDataSetChanged()V

    return-void
.end method
