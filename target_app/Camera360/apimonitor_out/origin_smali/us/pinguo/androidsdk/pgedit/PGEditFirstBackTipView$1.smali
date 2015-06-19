.class Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;
.super Landroid/os/Handler;
.source "PGEditFirstBackTipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->setVisibility(I)V

    return-void
.end method
