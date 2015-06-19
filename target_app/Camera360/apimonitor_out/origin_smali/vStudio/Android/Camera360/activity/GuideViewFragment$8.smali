.class LvStudio/Android/Camera360/activity/GuideViewFragment$8;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "GuideViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LvStudio/Android/Camera360/activity/GuideViewFragment;->installDefaultData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;


# direct methods
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
    .registers 2

    iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v4, 0x1

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->beginInstallTime:J
    invoke-static {v1, v2, v3}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$29(LvStudio/Android/Camera360/activity/GuideViewFragment;J)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installDefaultData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mIsInstallDataDone:Z
    invoke-static {v1, v4}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$31(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V

    iget-object v1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #calls: LvStudio/Android/Camera360/activity/GuideViewFragment;->readyEnterCamera(Z)V
    invoke-static {v1, v4}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$30(LvStudio/Android/Camera360/activity/GuideViewFragment;Z)V

    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$17(LvStudio/Android/Camera360/activity/GuideViewFragment;Landroid/os/Handler;)V

    :cond_12
    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$8;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$16(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
