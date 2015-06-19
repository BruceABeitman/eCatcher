.class final Lcom/instagram/android/directshare/e/j;
.super Lcom/instagram/api/j/a;
.source "RequestedDirectSharesFragment.java"
.field final synthetic a:Lcom/instagram/android/directshare/e/b;
.field private final b:Lcom/instagram/f/c/a;
.field private final c:Lcom/instagram/android/directshare/e/k;
.method public constructor <init>(Lcom/instagram/android/directshare/e/b;Lcom/instagram/f/c/a;Lcom/instagram/android/directshare/e/k;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
iput-object p2, p0, Lcom/instagram/android/directshare/e/j;->b:Lcom/instagram/f/c/a;
iput-object p3, p0, Lcom/instagram/android/directshare/e/j;->c:Lcom/instagram/android/directshare/e/k;
return-void
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->b:Lcom/instagram/f/c/a;
invoke-static {v0}, Lcom/instagram/android/directshare/c/v;->a(Lcom/instagram/f/c/a;)V
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->c:Lcom/instagram/android/directshare/e/k;
sget-object v1, Lcom/instagram/android/directshare/e/k;->c:Lcom/instagram/android/directshare/e/k;
if-ne v0, v1, :cond_35
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->e(Lcom/instagram/android/directshare/e/b;)Lcom/instagram/android/directshare/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/e/a;->a()V
:goto_14
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->c:Lcom/instagram/android/directshare/e/k;
sget-object v1, Lcom/instagram/android/directshare/e/k;->b:Lcom/instagram/android/directshare/e/k;
if-eq v0, v1, :cond_34
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->j()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v0}, Lcom/instagram/android/directshare/e/b;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/directshare/b/a;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->k()Z
:cond_34
return-void
:cond_35
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->c:Lcom/instagram/android/directshare/e/k;
sget-object v1, Lcom/instagram/android/directshare/e/k;->b:Lcom/instagram/android/directshare/e/k;
if-ne v0, v1, :cond_40
const-string v0, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
:cond_40
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->f(Lcom/instagram/android/directshare/e/b;)V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
goto :goto_14
.end method
.method public final a()V
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
iget-object v1, p0, Lcom/instagram/android/directshare/e/j;->c:Lcom/instagram/android/directshare/e/k;
invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->g(Lcom/instagram/android/directshare/e/b;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/directshare/e/j;->c()V
return-void
.end method
.method public final b()V
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/directshare/e/j;->a:Lcom/instagram/android/directshare/e/b;
invoke-virtual {v1}, Lcom/instagram/android/directshare/e/b;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method