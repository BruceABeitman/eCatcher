.class Lcom/pinguo/camera360/camera/activity/AdsActivity$1;
.super Ljava/lang/Object;
.source "AdsActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/AdsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/AdsActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity$1;->this$0:Lcom/pinguo/camera360/camera/activity/AdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity$1;->this$0:Lcom/pinguo/camera360/camera/activity/AdsActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/activity/AdsActivity;->finish()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method
