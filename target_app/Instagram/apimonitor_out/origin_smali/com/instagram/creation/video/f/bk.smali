.class final Lcom/instagram/creation/video/f/bk;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/instagram/creation/video/f/bi;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bi;Landroid/view/GestureDetector;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/video/f/bk;->b:Lcom/instagram/creation/video/f/bi;

    iput-object p2, p0, Lcom/instagram/creation/video/f/bk;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/bk;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
