.class final Lcom/instagram/android/fragment/u;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/u;->a:Lcom/instagram/android/fragment/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/u;->a:Lcom/instagram/android/fragment/t;

    iget-object v0, v0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->u()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/android/fragment/u;->a:Lcom/instagram/android/fragment/t;

    iget-object v0, v0, Lcom/instagram/android/fragment/t;->a:Lcom/instagram/android/fragment/o;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/o;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    :cond_15
    return-void
.end method
