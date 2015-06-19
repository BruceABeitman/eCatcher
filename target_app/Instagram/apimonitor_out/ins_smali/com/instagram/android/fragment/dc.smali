.class final Lcom/instagram/android/fragment/dc;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/fragment/ct;
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dc;->a:Lcom/instagram/android/fragment/ct;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/dc;->a:Lcom/instagram/android/fragment/ct;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/l;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/l;->notifyDataSetChanged()V
return-void
.end method