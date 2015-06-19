.class final Lcom/instagram/android/creation/a/e;
.super Landroid/os/Handler;
.source "DirectShareFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/d;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->b(Lcom/instagram/android/creation/a/d;)V

    :cond_27
    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->c(Lcom/instagram/android/creation/a/d;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/e;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/d;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_14
.end method
