.class final Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/SearchView$OnCloseListener;
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClose()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
invoke-interface {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;->onClose()Z
move-result v0
return v0
.end method