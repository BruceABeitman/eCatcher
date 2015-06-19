.class  Landroid/support/v7/internal/widget/y;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V
:cond_d
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->n()V
return-void
.end method