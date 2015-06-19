.class final Lcom/instagram/android/creation/a/n;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_18
    iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->clearFocus()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_36
    return-void
.end method
