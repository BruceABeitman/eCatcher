.class final Lcom/instagram/android/directshare/c/h;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/android/directshare/c/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/c/h;->a:Lcom/instagram/android/directshare/c/c;

    invoke-virtual {v2}, Lcom/instagram/android/directshare/c/c;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, v3, v3}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    :cond_28
    return-void
.end method
