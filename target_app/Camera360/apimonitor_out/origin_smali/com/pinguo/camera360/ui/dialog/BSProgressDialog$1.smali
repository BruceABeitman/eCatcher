.class Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;
.super Landroid/os/Handler;
.source "BSProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-double v6, v4

    int-to-double v8, v1

    div-double v2, v6, v8

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->access$4(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
