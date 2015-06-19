.class Lcom/pinguo/camera360/gallery/ui/SlotView$1;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/SlotView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

.field private final synthetic val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$1;->val$listener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;->onUserInteractionEnd()V

    return-void
.end method
