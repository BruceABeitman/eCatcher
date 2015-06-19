.class final Lcom/instagram/android/fragment/d;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"
.implements Lcom/instagram/android/feed/a/f;
.field final synthetic a:Lcom/instagram/android/fragment/a;
.method constructor <init>(Lcom/instagram/android/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/d;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/e;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/e;-><init>(Lcom/instagram/android/fragment/d;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z
return-void
.end method