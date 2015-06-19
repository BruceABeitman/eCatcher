.class LvStudio/Android/Camera360/activity/CameraActivity$5;
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

    iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const-string/jumbo v5, "com.android.vending"

    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-static {v6, v5}, Lcom/pinguo/lib/util/SystemUtils;->checkApkExist(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "GooglePlay"

    iget-object v7, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    const v8, 0x7f080084

    invoke-virtual {v7, v8}, LvStudio/Android/Camera360/activity/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    if-eqz v2, :cond_51

    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v6, "http://play.google.com/store/apps/details?id=vStudio.Android.Camera360"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v6, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3c
    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    #calls: LvStudio/Android/Camera360/activity/CameraActivity;->startPartnerAppDownLoad()V
    invoke-static {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->access$4(LvStudio/Android/Camera360/activity/CameraActivity;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraExit()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->stop()V

    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v6}, LvStudio/Android/Camera360/activity/CameraActivity;->finish()V

    return-void

    :cond_51
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "market://details?id=vStudio.Android.Camera360"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_63
    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v6, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_68
    .catch Landroid/content/ActivityNotFoundException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_3c

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v6, "https://play.google.com/store/apps/details?id=vStudio.Android.Camera360"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_77
    iget-object v6, p0, LvStudio/Android/Camera360/activity/CameraActivity$5;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v6, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_7c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_77 .. :try_end_7c} :catch_7d

    goto :goto_3c

    :catch_7d
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3c
.end method
