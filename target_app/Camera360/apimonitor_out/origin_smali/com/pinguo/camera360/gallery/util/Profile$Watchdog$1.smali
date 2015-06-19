.class Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;->this$1:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;->this$1:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog$1;->this$1:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;

    #calls: Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->processList()V
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->access$0(Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
