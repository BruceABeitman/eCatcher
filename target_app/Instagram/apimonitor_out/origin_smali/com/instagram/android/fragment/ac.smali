.class final Lcom/instagram/android/fragment/ac;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/fragment/an;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/an;->removeMessages(I)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ac;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->b(Lcom/instagram/android/fragment/ab;)V

    :cond_11
    return-void
.end method
