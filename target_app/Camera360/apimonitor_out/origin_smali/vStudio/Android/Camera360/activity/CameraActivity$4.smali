.class LvStudio/Android/Camera360/activity/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LvStudio/Android/Camera360/activity/CameraActivity;->showRateAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;


# direct methods
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;)V
    .registers 2

    iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    #calls: LvStudio/Android/Camera360/activity/CameraActivity;->startPartnerAppDownLoad()V
    invoke-static {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->access$4(LvStudio/Android/Camera360/activity/CameraActivity;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->stop()V

    iget-object v0, p0, LvStudio/Android/Camera360/activity/CameraActivity$4;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->finish()V

    return-void
.end method
