.class Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->createListView(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
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
.field final synthetic this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;

.field private final synthetic val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;Landroid/widget/ListView;Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;

    iput-object p2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_d

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    :cond_d
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mCheckedItems:[Z

    aput-boolean v0, v1, p3

    :cond_19
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->this$1:Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;

    iget-object v1, v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v2, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$AlertParams$2;->val$dialog:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v1, v2, p3, v0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
