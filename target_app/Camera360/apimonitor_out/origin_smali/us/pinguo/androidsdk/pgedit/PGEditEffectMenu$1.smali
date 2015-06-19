.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"

# interfaces
.implements Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditEffectRendererMethod$PGEditRendererMethodAlphaActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    const/4 v1, 0x1

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z
    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V

    return-void
.end method

.method public success(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
