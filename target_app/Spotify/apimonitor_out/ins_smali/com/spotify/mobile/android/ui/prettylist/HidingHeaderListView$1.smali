.class final Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;->a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;->a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a(Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;->a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->requestLayout()V
:cond_d
return-void
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;->a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a(Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;->a:Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->requestLayout()V
:cond_d
return-void
.end method