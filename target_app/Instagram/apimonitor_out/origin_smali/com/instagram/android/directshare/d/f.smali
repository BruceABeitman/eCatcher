.class final Lcom/instagram/android/directshare/d/f;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/f;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/instagram/android/directshare/d/f;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->m(Lcom/instagram/android/directshare/d/c;)V

    :cond_8
    iget-object v0, p0, Lcom/instagram/android/directshare/d/f;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->o()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
