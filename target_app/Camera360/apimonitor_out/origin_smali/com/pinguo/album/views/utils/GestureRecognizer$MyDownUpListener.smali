.class Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/pinguo/album/views/utils/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/utils/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownUpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/utils/GestureRecognizer;Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;-><init>(Lcom/pinguo/album/views/utils/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onDown(FF)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/utils/GestureRecognizer$MyDownUpListener;->this$0:Lcom/pinguo/album/views/utils/GestureRecognizer;

    #getter for: Lcom/pinguo/album/views/utils/GestureRecognizer;->mListener:Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer;->access$0(Lcom/pinguo/album/views/utils/GestureRecognizer;)Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/album/views/utils/GestureRecognizer$Listener;->onUp()V

    return-void
.end method
