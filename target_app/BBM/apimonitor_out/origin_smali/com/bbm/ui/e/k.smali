.class final Lcom/bbm/ui/e/k;
.super Ljava/lang/Object;
.source "EphemeralPictureHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/j;

.field private final b:Lcom/bbm/d/eu;

.field private final c:Lcom/bbm/d/fs;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/e/j;Lcom/bbm/d/eu;Lcom/bbm/d/fs;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/e/k;->a:Lcom/bbm/ui/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/e/k;->b:Lcom/bbm/d/eu;

    iput-object p3, p0, Lcom/bbm/ui/e/k;->c:Lcom/bbm/d/fs;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/e/k;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/e/k;)Lcom/bbm/d/fs;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/k;->c:Lcom/bbm/d/fs;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/e/k;)Lcom/bbm/d/eu;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/k;->b:Lcom/bbm/d/eu;

    return-object v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/e/k;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    new-instance v0, Lcom/bbm/ui/e/l;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/e/l;-><init>(Lcom/bbm/ui/e/k;Landroid/view/View;)V

    iput-object v0, p0, Lcom/bbm/ui/e/k;->e:Ljava/lang/Runnable;

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/e/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/e/k;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_1b
    return v4

    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_29

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    :cond_29
    const-string v0, "Ephemeral Picture Released"

    const-class v1, Lcom/bbm/ui/e/j;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/e/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1b
.end method
