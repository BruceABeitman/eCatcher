.class  Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V
return-void
.end method
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatIcs;->newSearchView(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public setImeOptions(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setImeOptions(Landroid/view/View;I)V
return-void
.end method
.method public setInputType(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setInputType(Landroid/view/View;I)V
return-void
.end method