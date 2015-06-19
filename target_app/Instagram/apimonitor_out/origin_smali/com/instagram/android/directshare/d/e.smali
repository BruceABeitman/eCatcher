.class final Lcom/instagram/android/directshare/d/e;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/e;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/instagram/android/directshare/d/e;->a:Lcom/instagram/android/directshare/d/c;

    iget-object v0, p0, Lcom/instagram/android/directshare/d/e;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->q()Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Lcom/instagram/feed/d/o;->b:I

    :goto_10
    sget v2, Lcom/instagram/android/h/g;->a:I

    invoke-static {v1, v0, v2}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;II)V

    return-void

    :cond_16
    sget v0, Lcom/instagram/feed/d/o;->a:I

    goto :goto_10
.end method
