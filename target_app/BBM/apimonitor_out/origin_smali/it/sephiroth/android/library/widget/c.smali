.class public final Lit/sephiroth/android/library/widget/c;
.super Lit/sephiroth/android/library/widget/u;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.it/sephiroth/android/library/widget/u;"
    }
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/c;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/u;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->onChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->onInvalidated()V

    return-void
.end method
