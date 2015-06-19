.class Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;
.super Ljava/lang/Object;
.source "BSDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

.field private final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$context:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
