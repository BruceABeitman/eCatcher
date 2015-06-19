.class final Lcom/instagram/android/directshare/d/af;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/af;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    new-instance v0, Lcom/instagram/f/a/a/o;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/af;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/af;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v2}, Lcom/instagram/android/directshare/d/ad;->i(Lcom/instagram/android/directshare/d/ad;)Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/directshare/d/af;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v3}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v3

    sget-object v4, Lcom/instagram/f/a/a/b;->b:Lcom/instagram/f/a/a/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/f/a/a/o;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;Lcom/instagram/f/a/a/b;)V

    invoke-virtual {v0}, Lcom/instagram/f/a/a/o;->h()V

    return-void
.end method
