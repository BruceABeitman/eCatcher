.class Lcom/glympse/android/controls/ToggleButton$1;
.super Ljava/lang/Object;
.source "ToggleButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/glympse/android/controls/ToggleButton;


# direct methods
.method constructor <init>(Lcom/glympse/android/controls/ToggleButton;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/controls/ToggleButton$1;->this$0:Lcom/glympse/android/controls/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$1;->this$0:Lcom/glympse/android/controls/ToggleButton;

    #getter for: Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/glympse/android/controls/ToggleButton;->access$100(Lcom/glympse/android/controls/ToggleButton;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    const/4 v0, 0x3

    invoke-static {p2}, Lcom/glympse/android/controls/Reflection$_MotionEvent;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    if-eq v0, v1, :cond_1c

    :try_start_13
    iget-object v0, p0, Lcom/glympse/android/controls/ToggleButton$1;->this$0:Lcom/glympse/android/controls/ToggleButton;

    #getter for: Lcom/glympse/android/controls/ToggleButton;->_gestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/glympse/android/controls/ToggleButton;->access$100(Lcom/glympse/android/controls/ToggleButton;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1e

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0

    :catch_1e
    move-exception v0

    goto :goto_1c
.end method
