.class Lus/pinguo/androidsdk/pgedit/PGEditController$8;
.super Ljava/lang/Object;
.source "PGEditController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getNextStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;

    move-result-object v2

    invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->getNowShowPhoto()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v3

    return-void

    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method
