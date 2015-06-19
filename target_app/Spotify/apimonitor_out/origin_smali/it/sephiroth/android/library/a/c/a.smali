.class public final Lit/sephiroth/android/library/a/c/a;
.super Lit/sephiroth/android/library/a/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/a/b/a;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/a/c/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
