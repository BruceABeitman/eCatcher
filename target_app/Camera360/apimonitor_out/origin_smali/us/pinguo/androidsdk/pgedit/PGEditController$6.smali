.class Lus/pinguo/androidsdk/pgedit/PGEditController$6;
.super Ljava/lang/Object;
.source "PGEditController.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;->makeEditPhoto()V
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

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public success(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v0

    instance-of v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v6

    check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->getEffectKey()Ljava/lang/String;

    move-result-object v5

    :cond_17
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getFirstMenu()Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;

    move-result-object v3

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getItems()[Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_43
.end method
