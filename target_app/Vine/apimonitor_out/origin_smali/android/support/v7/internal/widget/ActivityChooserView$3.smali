.class Landroid/support/v7/internal/widget/ActivityChooserView$3;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;

    #calls: Landroid/support/v7/internal/widget/ActivityChooserView;->updateAppearance()V
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$400(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method