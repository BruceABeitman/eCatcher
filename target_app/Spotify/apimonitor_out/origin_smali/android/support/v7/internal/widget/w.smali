.class final Landroid/support/v7/internal/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-nez v0, :cond_53

    iget-object v3, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_53

    if-ltz v1, :cond_53

    iget-object v3, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_53

    if-ltz v2, :cond_53

    iget-object v1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_53

    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/x;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_51
    :goto_51
    const/4 v0, 0x0

    return v0

    :cond_53
    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_51
.end method
