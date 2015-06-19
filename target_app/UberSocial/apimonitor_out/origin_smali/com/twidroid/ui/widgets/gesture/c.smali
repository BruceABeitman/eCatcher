.class public Lcom/twidroid/ui/widgets/gesture/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;


# direct methods
.method public constructor <init>(Lcom/twidroid/ui/widgets/gesture/GestureImageView;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/twidroid/ui/widgets/gesture/c;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/c;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->d()V

    const/4 v0, 0x1

    return v0
.end method
