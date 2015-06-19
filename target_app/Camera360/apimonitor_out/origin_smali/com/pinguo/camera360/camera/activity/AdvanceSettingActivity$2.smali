.class Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$2;
.super Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;
.source "AdvanceSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$2;->this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;

    invoke-direct {p0, p2}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public updateOutThread(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->updateOutThread(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity$2;->this$0:Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;

    #calls: Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->updateCheckUpdateNewVersionIcon()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;->access$0(Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;)V

    return-void
.end method
