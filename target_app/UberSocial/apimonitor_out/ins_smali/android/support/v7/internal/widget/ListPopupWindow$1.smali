.class  Landroid/support/v7/internal/widget/ListPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;
.method constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$1;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$1;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$1;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V
:cond_13
return-void
.end method