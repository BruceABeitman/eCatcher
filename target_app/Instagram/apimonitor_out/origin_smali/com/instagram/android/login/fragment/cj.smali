.class final Lcom/instagram/android/login/fragment/cj;
.super Ljava/lang/Object;
.source "VerifyFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/cj;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/login/fragment/cj;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->a(Lcom/instagram/android/login/fragment/ci;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/refresh/RefreshButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/login/fragment/cj;->a:Lcom/instagram/android/login/fragment/ci;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->b(Lcom/instagram/android/login/fragment/ci;)V

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method