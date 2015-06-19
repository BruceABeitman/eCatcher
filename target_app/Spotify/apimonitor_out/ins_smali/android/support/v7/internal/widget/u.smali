.class final Landroid/support/v7/internal/widget/u;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/u;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->i()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V
:cond_d
return-void
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->f()V
return-void
.end method