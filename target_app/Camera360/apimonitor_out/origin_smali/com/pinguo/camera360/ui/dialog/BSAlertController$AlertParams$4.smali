.class Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "BSAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

.field private final synthetic val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

.field private final synthetic val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/RecycleListView;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    iput-object p3, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    invoke-virtual {v1, p3}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    :cond_12
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$4;->val$listView:Lcom/pinguo/camera360/ui/dialog/RecycleListView;

    invoke-virtual {v2, p3}, Lcom/pinguo/camera360/ui/dialog/RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
