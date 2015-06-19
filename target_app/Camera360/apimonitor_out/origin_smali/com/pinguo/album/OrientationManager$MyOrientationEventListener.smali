.class Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/OrientationManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/album/OrientationManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    #calls: Lcom/pinguo/album/OrientationManager;->roundOrientation(II)I
    invoke-static {p1, v0}, Lcom/pinguo/album/OrientationManager;->access$0(II)I

    move-result p1

    goto :goto_3
.end method
