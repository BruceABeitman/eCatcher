.class final Lcom/bbm/ui/views/u;
.super Landroid/widget/BaseAdapter;
.source "QuickActionAttachmentsView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/QuickActionAttachmentsView;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/views/QuickActionAttachmentsView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/u;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/views/QuickActionAttachmentsView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/views/u;-><init>(Lcom/bbm/ui/views/QuickActionAttachmentsView;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/bbm/ui/views/w;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/views/u;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-static {v0}, Lcom/bbm/ui/views/QuickActionAttachmentsView;->a(Lcom/bbm/ui/views/QuickActionAttachmentsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/w;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/u;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-static {v0}, Lcom/bbm/ui/views/QuickActionAttachmentsView;->a(Lcom/bbm/ui/views/QuickActionAttachmentsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    new-instance v0, Lcom/bbm/ui/QuickActionAttachmentsItemView;

    iget-object v1, p0, Lcom/bbm/ui/views/u;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    invoke-virtual {v1}, Lcom/bbm/ui/views/QuickActionAttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/ui/views/w;->c:Lcom/bbm/j/r;

    if-eqz v1, :cond_36

    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/ui/views/w;->c:Lcom/bbm/j/r;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->setIcon(Lcom/bbm/j/r;)V

    :goto_1c
    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/ui/views/w;->d:Ljava/lang/String;

    if-eqz v1, :cond_40

    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/ui/views/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->setLabel(Ljava/lang/String;)V

    :goto_2d
    new-instance v1, Lcom/bbm/ui/views/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbm/ui/views/v;-><init>(Lcom/bbm/ui/views/u;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_36
    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget v1, v1, Lcom/bbm/ui/views/w;->a:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->setIcon(I)V

    goto :goto_1c

    :cond_40
    invoke-virtual {p0, p1}, Lcom/bbm/ui/views/u;->a(I)Lcom/bbm/ui/views/w;

    move-result-object v1

    iget v1, v1, Lcom/bbm/ui/views/w;->b:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->setLabel(I)V

    goto :goto_2d
.end method
