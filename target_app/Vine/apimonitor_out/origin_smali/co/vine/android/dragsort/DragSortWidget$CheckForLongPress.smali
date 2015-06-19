.class public Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;
.super Ljava/lang/Object;
.source "DragSortWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/dragsort/DragSortWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/dragsort/DragSortWidget;


# direct methods
.method public constructor <init>(Lco/vine/android/dragsort/DragSortWidget;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$2900(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v0

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mDownPosition:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$3000(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
    invoke-static {v0}, Lco/vine/android/dragsort/DragSortWidget;->access$2900(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v0

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mSelectionPosition:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2200(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2900(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lco/vine/android/dragsort/DragSortWidget;->handleClick(IZ)Z
    invoke-static {v0, v1, v2}, Lco/vine/android/dragsort/DragSortWidget;->access$3100(Lco/vine/android/dragsort/DragSortWidget;IZ)Z

    :cond_28
    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2900(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewListPosition:I
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$102(Lco/vine/android/dragsort/DragSortWidget;I)I

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchListPosition:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$2900(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    #calls: Lco/vine/android/dragsort/DragSortWidget;->pickUpView(I)Z
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$3200(Lco/vine/android/dragsort/DragSortWidget;I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchX:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$200(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mXOffsetFromTouch:I
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$1600(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewX:I
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$702(Lco/vine/android/dragsort/DragSortWidget;I)I

    iget-object v0, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    iget-object v1, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mTouchY:I
    invoke-static {v1}, Lco/vine/android/dragsort/DragSortWidget;->access$1800(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/dragsort/DragSortWidget$CheckForLongPress;->this$0:Lco/vine/android/dragsort/DragSortWidget;

    #getter for: Lco/vine/android/dragsort/DragSortWidget;->mYOffsetFromTouch:I
    invoke-static {v2}, Lco/vine/android/dragsort/DragSortWidget;->access$1700(Lco/vine/android/dragsort/DragSortWidget;)I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lco/vine/android/dragsort/DragSortWidget;->mFloatViewY:I
    invoke-static {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->access$802(Lco/vine/android/dragsort/DragSortWidget;I)I

    :cond_65
    return-void
.end method
