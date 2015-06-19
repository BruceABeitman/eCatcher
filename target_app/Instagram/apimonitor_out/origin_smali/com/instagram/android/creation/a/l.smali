.class final Lcom/instagram/android/creation/a/l;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/l;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/creation/a/l;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->k(Lcom/instagram/android/creation/a/d;)V

    iget-object v0, p0, Lcom/instagram/android/creation/a/l;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/instagram/android/creation/a/l;->a:Lcom/instagram/android/creation/a/d;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/d;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/l;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
