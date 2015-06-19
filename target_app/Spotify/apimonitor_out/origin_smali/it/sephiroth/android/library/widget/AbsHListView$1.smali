.class final Lit/sephiroth/android/library/widget/AbsHListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/widget/AbsHListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lit/sephiroth/android/library/widget/h;

.field final synthetic c:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/h;)V
    .registers 4

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->a:Landroid/view/View;

    iput-object p3, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->b:Lit/sephiroth/android/library/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$1;->b:Lit/sephiroth/android/library/widget/h;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/h;->run()V

    :cond_1b
    return-void
.end method
