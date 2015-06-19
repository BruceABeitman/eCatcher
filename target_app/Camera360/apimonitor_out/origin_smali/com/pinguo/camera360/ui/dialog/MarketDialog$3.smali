.class Lcom/pinguo/camera360/ui/dialog/MarketDialog$3;
.super Ljava/lang/Object;
.source "MarketDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/ui/dialog/MarketDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$3;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$3;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
