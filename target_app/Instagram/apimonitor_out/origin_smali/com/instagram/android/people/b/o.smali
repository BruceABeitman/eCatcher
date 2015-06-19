.class final Lcom/instagram/android/people/b/o;
.super Ljava/lang/Object;
.source "PhotosOfYouFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/b/o;->a:Lcom/instagram/android/people/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PhotosOfYouOptionsFragment.ARG_REVIEW_ENABLED"

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/people/b/o;->a:Lcom/instagram/android/people/b/m;

    invoke-virtual {v2}, Lcom/instagram/android/people/b/m;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/people/b/q;

    invoke-direct {v2}, Lcom/instagram/android/people/b/q;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
