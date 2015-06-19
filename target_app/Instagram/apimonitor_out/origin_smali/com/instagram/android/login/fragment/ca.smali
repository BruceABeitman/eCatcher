.class final Lcom/instagram/android/login/fragment/ca;
.super Ljava/lang/Object;
.source "UserPasswordRecoveryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/bz;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/ca;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/instagram/o/b;->aq:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ca;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/bz;->b()Lcom/instagram/android/login/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/ca;->a:Lcom/instagram/android/login/fragment/bz;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/bz;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "email_lookup"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/m;->b(Ljava/lang/String;)V

    return-void
.end method
