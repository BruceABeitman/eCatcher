.class Lcom/pinguo/share/at/AtActivity$2;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/at/AtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    #calls: Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z
    invoke-static {v3}, Lcom/pinguo/share/at/AtActivity;->access$0(Lcom/pinguo/share/at/AtActivity;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/at/AtListAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtListAdapter;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtListAdapter;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt p3, v3, :cond_8

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtListAdapter;->getList()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtAttentionBean;->isTag()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    #getter for: Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pinguo/share/at/AtActivity;->access$1(Lcom/pinguo/share/at/AtActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtAttentionBean;->getSite()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_60

    iget-object v3, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Lcom/pinguo/share/at/AtActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    #getter for: Lcom/pinguo/share/at/AtActivity;->mNowOrientation:I
    invoke-static {v5}, Lcom/pinguo/share/at/AtActivity;->access$2(Lcom/pinguo/share/at/AtActivity;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_8

    :cond_60
    invoke-virtual {v1}, Lcom/pinguo/share/at/AtAttentionBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v3, 0x0

    :goto_67
    invoke-virtual {v1, v3}, Lcom/pinguo/share/at/AtAttentionBean;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtListAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/pinguo/share/at/AtActivity$2;->this$0:Lcom/pinguo/share/at/AtActivity;

    #calls: Lcom/pinguo/share/at/AtActivity;->updateCachedCount(Lcom/pinguo/share/at/AtAttentionBean;)V
    invoke-static {v3, v1}, Lcom/pinguo/share/at/AtActivity;->access$3(Lcom/pinguo/share/at/AtActivity;Lcom/pinguo/share/at/AtAttentionBean;)V

    goto :goto_8

    :cond_73
    const/4 v3, 0x1

    goto :goto_67
.end method
