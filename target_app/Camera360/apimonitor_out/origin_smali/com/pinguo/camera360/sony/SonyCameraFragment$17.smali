.class Lcom/pinguo/camera360/sony/SonyCameraFragment$17;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;->setEnableParametersView(Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

.field private final synthetic val$enable:Z

.field private final synthetic val$v:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;Z)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->val$v:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iput-boolean p3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->val$v:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->val$v:Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$17;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setEnabled(Z)V

    :cond_b
    return-void
.end method
