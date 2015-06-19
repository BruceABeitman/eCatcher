.class final Lcom/instagram/android/fragment/ad;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->f(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/h/b/c;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->n(Lcom/instagram/android/fragment/ab;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->o(Lcom/instagram/android/fragment/ab;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/instagram/android/fragment/ad;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->p(Lcom/instagram/android/fragment/ab;)V

    goto :goto_d
.end method
