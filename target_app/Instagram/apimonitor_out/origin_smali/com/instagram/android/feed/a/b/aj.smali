.class final Lcom/instagram/android/feed/a/b/aj;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/ar;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/aj;->a:Lcom/instagram/android/feed/a/b/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/aj;->a:Lcom/instagram/android/feed/a/b/ar;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/ar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/aj;->a:Lcom/instagram/android/feed/a/b/ar;

    iget-object v1, v1, Lcom/instagram/android/feed/a/b/ar;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/aj;->a:Lcom/instagram/android/feed/a/b/ar;

    iget-object v2, v2, Lcom/instagram/android/feed/a/b/ar;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    return-void
.end method
