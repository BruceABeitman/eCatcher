.class Lcom/pinguo/camera360/gallery/ui/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/GLRootView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/GLRootView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/GLRootView$1;->this$0:Lcom/pinguo/camera360/gallery/ui/GLRootView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/GLRootView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
