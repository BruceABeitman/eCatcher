.class final Lcom/instagram/android/directshare/d/k;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/feed/a/b/ac;
.field final synthetic b:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/android/feed/a/b/ac;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/android/directshare/d/c;
iput-object p2, p0, Lcom/instagram/android/directshare/d/k;->a:Lcom/instagram/android/feed/a/b/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->b:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/d/k;->a:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/widget/MediaActionsView;->a()V
:cond_11
return-void
.end method