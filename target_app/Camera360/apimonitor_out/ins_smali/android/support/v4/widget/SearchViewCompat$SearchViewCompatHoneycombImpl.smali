.class  Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.source "SearchViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V
return-void
.end method
.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.registers 3
new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method