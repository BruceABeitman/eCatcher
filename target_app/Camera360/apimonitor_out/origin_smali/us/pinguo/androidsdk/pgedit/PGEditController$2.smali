.class Lus/pinguo/androidsdk/pgedit/PGEditController$2;
.super Ljava/lang/Object;
.source "PGEditController.java"

# interfaces
.implements Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;
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

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public glCreated()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public glDestroyed()V
    .registers 1

    return-void
.end method
