.class Lcom/pinguo/camera360/gallery/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcom/pinguo/camera360/gallery/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/pinguo/camera360/gallery/ActivityState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->data:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/StateManager$StateEntry;->activityState:Lcom/pinguo/camera360/gallery/ActivityState;

    return-void
.end method
