.class final Lcom/instagram/android/feed/a/a/ad;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/ac;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/ac;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->l(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/support/v4/app/s;)V

    return-void
.end method
