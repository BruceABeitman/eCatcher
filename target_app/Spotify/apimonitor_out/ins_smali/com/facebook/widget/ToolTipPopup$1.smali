.class final Lcom/facebook/widget/ToolTipPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.field final synthetic a:Lcom/facebook/widget/ToolTipPopup;
.method constructor <init>(Lcom/facebook/widget/ToolTipPopup;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onScrollChanged()V
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->a(Lcom/facebook/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->b(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
move-result-object v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->b(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->b(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->c(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/widget/h;->b()V
:cond_35
:goto_35
return-void
:cond_36
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$1;->a:Lcom/facebook/widget/ToolTipPopup;
invoke-static {v0}, Lcom/facebook/widget/ToolTipPopup;->c(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/widget/h;->a()V
goto :goto_35
.end method