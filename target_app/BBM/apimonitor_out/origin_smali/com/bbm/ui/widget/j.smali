.class final Lcom/bbm/ui/widget/j;
.super Ljava/lang/Object;
.source "TechTipPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/widget/i;


# direct methods
.method constructor <init>(Lcom/bbm/ui/widget/i;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/widget/j;->a:Lcom/bbm/ui/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/widget/j;->a:Lcom/bbm/ui/widget/i;

    invoke-virtual {v0}, Lcom/bbm/ui/widget/i;->dismiss()V

    :cond_b
    const/4 v0, 0x1

    return v0
.end method
