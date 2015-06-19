.class final Lcom/bbm/ui/ck;
.super Ljava/lang/Object;
.source "FpsMeter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/FpsMeter;


# direct methods
.method constructor <init>(Lcom/bbm/ui/FpsMeter;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ck;->a:Lcom/bbm/ui/FpsMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/ck;->a:Lcom/bbm/ui/FpsMeter;

    invoke-virtual {v0}, Lcom/bbm/ui/FpsMeter;->a()V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
