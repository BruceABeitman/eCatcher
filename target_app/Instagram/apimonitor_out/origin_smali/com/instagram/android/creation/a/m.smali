.class final Lcom/instagram/android/creation/a/m;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/m;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/creation/a/m;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->m(Lcom/instagram/android/creation/a/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v0, p0, Lcom/instagram/android/creation/a/m;->a:Lcom/instagram/android/creation/a/d;

    iget-object v1, p0, Lcom/instagram/android/creation/a/m;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/d;->a(Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/instagram/android/creation/a/m;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v1, p2, v0}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Landroid/view/View;I)V

    goto :goto_2b
.end method
