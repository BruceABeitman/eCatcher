.class Lco/vine/android/views/HorizontalListView$CheckForLongPress;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lco/vine/android/views/HorizontalListView;


# direct methods
.method private constructor <init>(Lco/vine/android/views/HorizontalListView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/views/HorizontalListView;Lco/vine/android/views/HorizontalListView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/views/HorizontalListView$CheckForLongPress;-><init>(Lco/vine/android/views/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #calls: Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
    invoke-static {v0}, Lco/vine/android/views/HorizontalListView;->access$1300(Lco/vine/android/views/HorizontalListView;)I

    move-result v0

    iput v0, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->mOriginalAttachCount:I

    return-void
.end method

.method public run()V
    .registers 10

    const/4 v8, 0x0

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$200(Lco/vine/android/views/HorizontalListView;)I

    move-result v5

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    iget-object v7, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mFirstVisiblePos:I
    invoke-static {v7}, Lco/vine/android/views/HorizontalListView;->access$800(Lco/vine/android/views/HorizontalListView;)I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$200(Lco/vine/android/views/HorizontalListView;)I

    move-result v4

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$500(Lco/vine/android/views/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mMotionPosition:I
    invoke-static {v7}, Lco/vine/android/views/HorizontalListView;->access$200(Lco/vine/android/views/HorizontalListView;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #getter for: Lco/vine/android/views/HorizontalListView;->mDataChanged:Z
    invoke-static {v6}, Lco/vine/android/views/HorizontalListView;->access$100(Lco/vine/android/views/HorizontalListView;)Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #calls: Lco/vine/android/views/HorizontalListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Lco/vine/android/views/HorizontalListView;->access$1500(Lco/vine/android/views/HorizontalListView;Landroid/view/View;IJ)Z

    move-result v1

    :cond_42
    if-eqz v1, :cond_53

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v7, -0x1

    #setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
    invoke-static {v6, v7}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I

    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v6, v8}, Lco/vine/android/views/HorizontalListView;->setPressed(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    iget-object v6, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    const/4 v7, 0x2

    #setter for: Lco/vine/android/views/HorizontalListView;->mTouchMode:I
    invoke-static {v6, v7}, Lco/vine/android/views/HorizontalListView;->access$002(Lco/vine/android/views/HorizontalListView;I)I

    goto :goto_52
.end method

.method public sameWindow()Z
    .registers 3

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    invoke-virtual {v0}, Lco/vine/android/views/HorizontalListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->this$0:Lco/vine/android/views/HorizontalListView;

    #calls: Lco/vine/android/views/HorizontalListView;->getWindowAttachCount()I
    invoke-static {v0}, Lco/vine/android/views/HorizontalListView;->access$1400(Lco/vine/android/views/HorizontalListView;)I

    move-result v0

    iget v1, p0, Lco/vine/android/views/HorizontalListView$CheckForLongPress;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
