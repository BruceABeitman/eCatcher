.class Lco/vine/android/service/GCMNotificationService$1;
.super Ljava/lang/Object;
.source "GCMNotificationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/GCMNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/GCMNotificationService;


# direct methods
.method constructor <init>(Lco/vine/android/service/GCMNotificationService;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$002(Lco/vine/android/service/GCMNotificationService;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
    invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$102(Lco/vine/android/service/GCMNotificationService;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/service/GCMNotificationService;->mCameraMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$002(Lco/vine/android/service/GCMNotificationService;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$1;->this$0:Lco/vine/android/service/GCMNotificationService;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/service/GCMNotificationService;->mIsCameraServiceConnected:Z
    invoke-static {v0, v1}, Lco/vine/android/service/GCMNotificationService;->access$102(Lco/vine/android/service/GCMNotificationService;Z)Z

    return-void
.end method
