.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->adapterCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    sget-boolean v3, Lcom/pinguo/camera360/adapter/GAdapter;->IS_XIAO_MI_CAMERA_PERMISSION:Z

    if-eqz v3, :cond_2f

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    const-string/jumbo v4, "vStudio.Android.Camera360"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f

    :cond_2f
    :try_start_2f
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$13;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v3, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_1f

    :catch_3d
    move-exception v3

    goto :goto_1f
.end method
