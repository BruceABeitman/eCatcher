.class final Lcom/userzoom/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "Scale"

    invoke-virtual {v2, v3, v0, v1, v4}, Luserzoom/com/a;->a(IIILjava/lang/String;)V

    return-void
.end method
