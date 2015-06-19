.class Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;
.super Landroid/os/Handler;
.source "PGEditCamera360Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$PGEditCamera360ControllerActionListener;

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$PGEditCamera360ControllerActionListener;->savePhotoFinishForOther()V

    goto :goto_5

    :pswitch_10
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$PGEditCamera360ControllerActionListener;

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$PGEditCamera360ControllerActionListener;->savePhotoFinishForCamera360()V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
