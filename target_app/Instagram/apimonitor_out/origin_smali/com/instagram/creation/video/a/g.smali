.class public final Lcom/instagram/creation/video/a/g;
.super Ljava/lang/Object;
.source "VideoShutterButtonListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/instagram/creation/video/a/f;

.field private b:Z

.field private c:Lcom/instagram/creation/video/f/a;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/a/f;Lcom/instagram/creation/video/f/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/a/g;->b:Z

    iput-object p1, p0, Lcom/instagram/creation/video/a/g;->a:Lcom/instagram/creation/video/a/f;

    iput-object p2, p0, Lcom/instagram/creation/video/a/g;->c:Lcom/instagram/creation/video/f/a;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/instagram/creation/video/a/g;->c:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v2}, Lcom/instagram/creation/video/f/a;->U()I

    move-result v2

    sget v3, Lcom/instagram/creation/video/a/e;->d:I

    if-eq v2, v3, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/instagram/creation/video/a/g;->b:Z

    iget-object v0, p0, Lcom/instagram/creation/video/a/g;->a:Lcom/instagram/creation/video/a/f;

    invoke-interface {v0}, Lcom/instagram/creation/video/a/f;->e()V

    :cond_23
    :goto_23
    move v0, v1

    goto :goto_18

    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_23

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v2, p0, Lcom/instagram/creation/video/a/g;->b:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/instagram/creation/video/a/g;->a:Lcom/instagram/creation/video/a/f;

    invoke-interface {v2}, Lcom/instagram/creation/video/a/f;->f()V

    :cond_37
    iput-boolean v0, p0, Lcom/instagram/creation/video/a/g;->b:Z

    goto :goto_23
.end method
