.class Landroid/support/v7/internal/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->notifyDataSetInvalidated()V

    return-void
.end method
