.class Lcom/umeng/newxp/view/widget/c;
.super Ljava/lang/Object;
.source "SwipeViewPointer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_94

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :pswitch_11
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->getOrientation()I

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3d

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;->b()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    goto :goto_10

    :cond_3d
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3b

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;->a()V

    goto :goto_3b

    :cond_57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7a

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;->b()V

    goto :goto_3b

    :cond_7a
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->b(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->c(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3b

    iget-object v0, p0, Lcom/umeng/newxp/view/widget/c;->a:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-static {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->a(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;->a()V

    goto :goto_3b

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method
