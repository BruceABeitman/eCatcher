.class final Lcom/instagram/android/directshare/d/q;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/directshare/d/ad;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;

    iget-object v2, p0, Lcom/instagram/android/directshare/d/q;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v2}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/directshare/d/ad;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/ad;->a()V

    return-void
.end method
