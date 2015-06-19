.class Lcom/twidroid/fragments/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Z

.field private b:Lcom/twidroid/fragments/base/b;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/base/b;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/twidroid/fragments/base/c;->a:Z

    iput-object p1, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {p1}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/base/c;->c:Landroid/widget/ListView;

    return-void
.end method

.method private a(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/b;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/base/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v1}, Lcom/twidroid/fragments/base/b;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->m()V

    invoke-direct {p0, p3}, Lcom/twidroid/fragments/base/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/twidroid/fragments/base/c;->a:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-direct {p0, p3}, Lcom/twidroid/fragments/base/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/b;->c(Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-direct {p0, p3}, Lcom/twidroid/fragments/base/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/b;->b(Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8

    invoke-direct {p0, p3}, Lcom/twidroid/fragments/base/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/twidroid/fragments/base/c;->a:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/base/b;->b(Ljava/lang/Object;)V

    :goto_11
    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    iget-object v1, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/base/b;->c(Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x17

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lcom/twidroid/fragments/base/c;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/twidroid/fragments/base/c;->b:Lcom/twidroid/fragments/base/b;

    iget-object v1, p0, Lcom/twidroid/fragments/base/c;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
