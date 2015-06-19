.class Lcom/pinguo/camera360/save/processer/PhotoProcesser$1;
.super Ljava/lang/Object;
.source "PhotoProcesser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/save/processer/PhotoProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcesser;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcesser;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesser$1;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string/jumbo v1, "PhotoProcesser"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;

    invoke-virtual {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcessService$PhotoProcessBinder;->getService()Lcom/pinguo/camera360/save/processer/PhotoProcessService;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->access$1(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string/jumbo v0, "PhotoProcesser"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->access$1(Z)V

    return-void
.end method
