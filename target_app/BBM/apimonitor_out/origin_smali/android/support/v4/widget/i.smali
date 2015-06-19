.class final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/h;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/h;

    iget-object v0, v6, Landroid/support/v4/widget/h;->b:Landroid/support/v4/widget/al;

    iget v2, v0, Landroid/support/v4/widget/al;->i:I

    iget v0, v6, Landroid/support/v4/widget/h;->a:I

    if-ne v0, v4, :cond_74

    move v3, v8

    :goto_f
    if-eqz v3, :cond_78

    iget-object v0, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_1e
    add-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    :goto_21
    if-eqz v2, :cond_8e

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v1, :cond_33

    :cond_2b
    if-nez v3, :cond_8e

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_8e

    :cond_33
    iget-object v0, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget-object v3, v6, Landroid/support/v4/widget/h;->b:Landroid/support/v4/widget/al;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v3, v2, v1, v9}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    iput-boolean v8, v0, Landroid/support/v4/widget/f;->c:Z

    iget-object v0, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    invoke-virtual {v6}, Landroid/support/v4/widget/h;->b()V

    iget-object v9, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-boolean v0, v9, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-nez v0, :cond_8e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v9}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    :goto_68
    if-ge v7, v1, :cond_89

    invoke-virtual {v9, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_74
    move v3, v7

    goto :goto_f

    :cond_76
    move v0, v7

    goto :goto_1e

    :cond_78
    iget-object v0, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, v6, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    move-object v2, v1

    move v1, v0

    goto :goto_21

    :cond_89
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v8, v9, Landroid/support/v4/widget/DrawerLayout;->d:Z

    :cond_8e
    return-void
.end method
