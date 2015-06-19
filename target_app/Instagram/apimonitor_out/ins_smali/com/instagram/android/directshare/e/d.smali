.class final Lcom/instagram/android/directshare/e/d;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/directshare/e/c;
.method constructor <init>(Lcom/instagram/android/directshare/e/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
new-instance v0, Lcom/instagram/f/a/a/n;
iget-object v1, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;
iget-object v1, v1, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;
iget-object v2, v2, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v2}, Lcom/instagram/android/directshare/e/b;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/directshare/e/m;
iget-object v4, p0, Lcom/instagram/android/directshare/e/d;->a:Lcom/instagram/android/directshare/e/c;
iget-object v4, v4, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;
const/4 v5, 0x0
invoke-direct {v3, v4, v5}, Lcom/instagram/android/directshare/e/m;-><init>(Lcom/instagram/android/directshare/e/b;B)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/n;->h()V
return-void
.end method