.class final Lcom/instagram/android/fragment/f;
.super Landroid/os/Handler;
.source "AbstractFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/a;
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/fragment/f;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V
:cond_11
return-void
.end method