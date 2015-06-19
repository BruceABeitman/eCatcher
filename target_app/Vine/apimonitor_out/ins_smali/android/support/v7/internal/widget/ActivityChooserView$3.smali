.class  Landroid/support/v7/internal/widget/ActivityChooserView$3;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActivityChooserView;
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/internal/widget/ActivityChooserView;
#calls: Landroid/support/v7/internal/widget/ActivityChooserView;->updateAppearance()V
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->access$400(Landroid/support/v7/internal/widget/ActivityChooserView;)V
return-void
.end method