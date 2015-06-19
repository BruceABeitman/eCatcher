.class Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ToggleButton.java"


# instance fields
.field final synthetic this$0:Lcom/glympse/android/controls/ToggleButton;


# direct methods
.method private constructor <init>(Lcom/glympse/android/controls/ToggleButton;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/controls/ToggleButton;Lcom/glympse/android/controls/ToggleButton$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;-><init>(Lcom/glympse/android/controls/ToggleButton;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x4000

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0}, Lcom/glympse/android/controls/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0, v1}, Lcom/glympse/android/controls/ToggleButton;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0, v1}, Lcom/glympse/android/controls/ToggleButton;->setChecked(Z)V

    :cond_1a
    :goto_1a
    return v2

    :cond_1b
    const/high16 v0, -0x4000

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0}, Lcom/glympse/android/controls/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0, v1}, Lcom/glympse/android/controls/ToggleButton;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0, v2}, Lcom/glympse/android/controls/ToggleButton;->setChecked(Z)V

    goto :goto_1a
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/android/controls/ToggleButton;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$FlingGestureDetector;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-virtual {v0}, Lcom/glympse/android/controls/ToggleButton;->toggle()V

    const/4 v0, 0x1

    return v0
.end method
