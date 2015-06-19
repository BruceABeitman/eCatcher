.class final Lit/sephiroth/android/library/widget/b;
.super Ljava/lang/Object;
.source "AbsHListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->m(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->n(Lit/sephiroth/android/library/widget/AbsHListView;)V

    :cond_23
    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_30
    return-void
.end method
