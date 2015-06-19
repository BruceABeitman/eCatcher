.class final Lcom/instagram/android/fragment/s;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x6

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->c(Lcom/instagram/android/fragment/o;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/fragment/s;->a:Lcom/instagram/android/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/fragment/o;->d(Lcom/instagram/android/fragment/o;)V

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method
