.class Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "BSAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->createListView(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

.field private final synthetic val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/pinguo/camera360/ui/dialog/RecycleListView;)V
    .registers 7

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p6, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v2, v2, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v2, v2, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$1;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->setItemChecked(IZ)V

    :cond_18
    return-object v1
.end method
