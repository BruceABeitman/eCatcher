.class final Lcom/instagram/android/login/fragment/b;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/b;->a:Lcom/instagram/android/login/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/instagram/o/b;->aj:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/b;->a:Lcom/instagram/android/login/fragment/a;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/login/fragment/o;

    invoke-direct {v1}, Lcom/instagram/android/login/fragment/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
