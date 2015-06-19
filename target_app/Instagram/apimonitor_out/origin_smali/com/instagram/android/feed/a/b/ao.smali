.class final Lcom/instagram/android/feed/a/b/ao;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/s;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ao;->a:Landroid/support/v4/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/instagram/base/a/a/a;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ao;->a:Landroid/support/v4/app/s;

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/ab;

    invoke-direct {v1}, Lcom/instagram/android/fragment/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
