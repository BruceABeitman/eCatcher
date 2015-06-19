.class public final Lit/sephiroth/android/library/widget/ab;
.super Landroid/database/DataSetObserver;
.source "ExpandableHListConnector.java"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;


# direct methods
.method protected constructor <init>(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->notifyDataSetInvalidated()V

    return-void
.end method
