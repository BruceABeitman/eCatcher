.class Lcom/fsck/k9/activity/MessageView$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    div-int/lit8 v2, v0, 0x4

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2c

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$2000(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageView;->access$2000(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/ScrollView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    return v1

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    div-int/lit8 v2, v0, 0x4

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2a

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$2000(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/ScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mTopView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageView;->access$2000(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/ScrollView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_2a
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/MessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42c8

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v2, v4

    const/high16 v4, 0x4348

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v3, v4

    const/high16 v4, 0x437a

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    float-to-int v1, v4

    :try_start_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_32

    move v4, v6

    :goto_31
    return v4

    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_51

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    const/4 v5, 0x1

    #calls: Lcom/fsck/k9/activity/MessageView;->onNext(Z)V
    invoke-static {v4, v5}, Lcom/fsck/k9/activity/MessageView;->access$2100(Lcom/fsck/k9/activity/MessageView;Z)V

    :cond_4f
    :goto_4f
    move v4, v6

    goto :goto_31

    :cond_51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4f

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4f

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageView;

    const/4 v5, 0x1

    #calls: Lcom/fsck/k9/activity/MessageView;->onPrevious(Z)V
    invoke-static {v4, v5}, Lcom/fsck/k9/activity/MessageView;->access$2200(Lcom/fsck/k9/activity/MessageView;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6e} :catch_6f

    goto :goto_4f

    :catch_6f
    move-exception v4

    goto :goto_4f
.end method
