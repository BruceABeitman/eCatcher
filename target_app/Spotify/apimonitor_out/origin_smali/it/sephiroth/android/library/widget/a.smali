.class public final Lit/sephiroth/android/library/widget/a;
.super Lit/sephiroth/android/library/widget/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/a;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/n;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    const-string v0, "AbsListView"

    const-string v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lit/sephiroth/android/library/widget/n;->onChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 3

    const-string v0, "AbsListView"

    const-string v1, "onInvalidated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lit/sephiroth/android/library/widget/n;->onInvalidated()V

    return-void
.end method
