.class final Lcom/spotify/mobile/android/ui/adapter/i$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/i;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/i;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/i$1;->a:Lcom/spotify/mobile/android/ui/adapter/i;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i$1;->a:Lcom/spotify/mobile/android/ui/adapter/i;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/i;->notifyDataSetChanged()V
return-void
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i$1;->a:Lcom/spotify/mobile/android/ui/adapter/i;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/i;->notifyDataSetInvalidated()V
return-void
.end method