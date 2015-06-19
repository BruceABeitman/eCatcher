.class final Lcom/instagram/android/feed/a/b/ah;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/user/c/a;

.field final synthetic b:Landroid/support/v4/app/s;


# direct methods
.method constructor <init>(Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ah;->a:Lcom/instagram/user/c/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/ah;->b:Landroid/support/v4/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ah;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ah;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/base/a/a/a;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ah;->b:Landroid/support/v4/app/s;

    invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/people/b/m;

    invoke-direct {v2}, Lcom/instagram/android/people/b/m;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
