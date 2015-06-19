.class final Lcom/instagram/android/creation/a/j;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    iput-object p2, p0, Lcom/instagram/android/creation/a/j;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v2}, Lcom/instagram/android/creation/a/d;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pendingMediaKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;

    iget-object v0, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/g;->a(Lcom/instagram/creation/b/a/h;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->a(Lcom/instagram/creation/b/a/b;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/d;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/instagram/android/creation/a/j;->b:Lcom/instagram/android/creation/a/d;

    iget-object v1, p0, Lcom/instagram/android/creation/a/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/d;->a(Landroid/view/View;)V

    :cond_46
    return-void
.end method
