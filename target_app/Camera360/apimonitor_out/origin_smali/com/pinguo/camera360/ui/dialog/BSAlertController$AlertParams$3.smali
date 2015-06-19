.class Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;Lcom/pinguo/camera360/ui/dialog/BSAlertController;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-object v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->this$1:Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertController$AlertParams$3;->val$dialog:Lcom/pinguo/camera360/ui/dialog/BSAlertController;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->access$7(Lcom/pinguo/camera360/ui/dialog/BSAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1c
    return-void
.end method
