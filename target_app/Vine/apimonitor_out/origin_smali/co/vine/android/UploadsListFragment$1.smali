.class Lco/vine/android/UploadsListFragment$1;
.super Ljava/lang/Object;
.source "UploadsListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/UploadsListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/UploadsListFragment;


# direct methods
.method constructor <init>(Lco/vine/android/UploadsListFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 v3, 0x1

    const-string v1, "UploadsListFragment"

    const-string v2, "Bind VineUploadService successful!"

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lco/vine/android/UploadsListFragment;->access$102(Lco/vine/android/UploadsListFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    #setter for: Lco/vine/android/UploadsListFragment;->mBound:Z
    invoke-static {v1, v3}, Lco/vine/android/UploadsListFragment;->access$202(Lco/vine/android/UploadsListFragment;Z)Z

    const/4 v1, 0x0

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    #getter for: Lco/vine/android/UploadsListFragment;->mIncomingMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lco/vine/android/UploadsListFragment;->access$300(Lco/vine/android/UploadsListFragment;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    #calls: Lco/vine/android/UploadsListFragment;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lco/vine/android/UploadsListFragment;->access$400(Lco/vine/android/UploadsListFragment;Landroid/os/Message;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "UploadsListFragment"

    const-string v1, "Connection to VineUploadService lost unexpectedly!"

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/UploadsListFragment;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lco/vine/android/UploadsListFragment;->access$102(Lco/vine/android/UploadsListFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lco/vine/android/UploadsListFragment$1;->this$0:Lco/vine/android/UploadsListFragment;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/UploadsListFragment;->mBound:Z
    invoke-static {v0, v1}, Lco/vine/android/UploadsListFragment;->access$202(Lco/vine/android/UploadsListFragment;Z)Z

    return-void
.end method
