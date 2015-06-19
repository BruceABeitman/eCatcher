.class public final Lcom/bbm/ui/activities/afi;
.super Landroid/widget/BaseAdapter;
.source "SetAsActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SetAsActivity;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/SetAsActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/afi;->a:Lcom/bbm/ui/activities/SetAsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/afi;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/bbm/ui/activities/afk;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/afi;->a:Lcom/bbm/ui/activities/SetAsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SetAsActivity;->c(Lcom/bbm/ui/activities/SetAsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/afk;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/afi;->a:Lcom/bbm/ui/activities/SetAsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SetAsActivity;->c(Lcom/bbm/ui/activities/SetAsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/afi;->a(I)Lcom/bbm/ui/activities/afk;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v3, 0x0

    if-nez p2, :cond_52

    new-instance v1, Lcom/bbm/ui/activities/afj;

    invoke-direct {v1, p0, v3}, Lcom/bbm/ui/activities/afj;-><init>(Lcom/bbm/ui/activities/afi;B)V

    iget-object v0, p0, Lcom/bbm/ui/activities/afi;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a04d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/activities/afj;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a04d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/activities/afj;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2b
    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/afi;->a(I)Lcom/bbm/ui/activities/afk;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/ui/activities/afj;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/activities/afi;->a:Lcom/bbm/ui/activities/SetAsActivity;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/SetAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Lcom/bbm/ui/activities/afk;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/bbm/ui/activities/afj;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/activities/afi;->a:Lcom/bbm/ui/activities/SetAsActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/SetAsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Lcom/bbm/ui/activities/afk;->c:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_52
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/afj;

    goto :goto_2b
.end method
