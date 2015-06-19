.class public final Lcom/userzoom/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Landroid/view/Window;

.field private synthetic c:Lcom/userzoom/al;


# direct methods
.method public constructor <init>(Lcom/userzoom/al;Landroid/app/Activity;Landroid/view/Window;)V
    .registers 4

    iput-object p1, p0, Lcom/userzoom/am;->c:Lcom/userzoom/al;

    iput-object p2, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/userzoom/am;->b:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/userzoom/am;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return v2

    :cond_10
    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    goto :goto_f
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/userzoom/am;->c:Lcom/userzoom/al;

    iget-object v0, v0, Lcom/userzoom/al;->b:Lcom/userzoom/as;

    invoke-virtual {v0, p1}, Lcom/userzoom/as;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/userzoom/am;->c:Lcom/userzoom/al;

    iget-object v0, v0, Lcom/userzoom/al;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/userzoom/am;->c:Lcom/userzoom/al;

    iget-object v0, v0, Lcom/userzoom/al;->c:Lcom/userzoom/as;

    invoke-virtual {v0, p1}, Lcom/userzoom/as;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/userzoom/am;->c:Lcom/userzoom/al;

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/userzoom/n;->g:I

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/userzoom/n;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_67

    const-string v0, "UzTouchEventsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Touch UP  on x="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v5, v1, v2, v3}, Luserzoom/com/a;->a(IIILjava/lang/String;)V

    :cond_66
    :goto_66
    return v5

    :cond_67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_66

    const-string v0, "UzTouchEventsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Touch DOWN on x="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v0, v3, v1, v2, v4}, Luserzoom/com/a;->a(IIILjava/lang/String;)V

    goto :goto_66
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    :cond_b
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_b
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .registers 1

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested()Z
    .registers 2

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/userzoom/am;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
