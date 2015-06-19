.class Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;
.super Ljava/lang/Object;
.source "MarketDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/ui/dialog/MarketDialog;
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

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/MarketDialog$1;->this$0:Lcom/pinguo/camera360/ui/dialog/MarketDialog;

    #getter for: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->mAppsList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/MarketDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    #calls: Lcom/pinguo/camera360/ui/dialog/MarketDialog;->startActivityFromResolveInfo(Landroid/content/pm/ResolveInfo;)V
    invoke-static {v1, v0}, Lcom/pinguo/camera360/ui/dialog/MarketDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/MarketDialog;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
