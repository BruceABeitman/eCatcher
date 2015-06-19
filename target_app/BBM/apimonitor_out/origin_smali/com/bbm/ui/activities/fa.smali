.class final Lcom/bbm/ui/activities/fa;
.super Ljava/lang/Object;
.source "ChildActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ev;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ev;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/fa;->a:Lcom/bbm/ui/activities/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/fa;->a:Lcom/bbm/ui/activities/ev;

    invoke-static {v0}, Lcom/bbm/ui/activities/ev;->b(Lcom/bbm/ui/activities/ev;)Landroid/support/v4/view/n;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/activities/fa;->a:Lcom/bbm/ui/activities/ev;

    invoke-static {v0}, Lcom/bbm/ui/activities/ev;->b(Lcom/bbm/ui/activities/ev;)Landroid/support/v4/view/n;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/view/n;->a(Landroid/view/MotionEvent;)Z

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
