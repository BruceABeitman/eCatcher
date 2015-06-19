.class final Lcom/bbm/ui/activities/acm;
.super Landroid/widget/BaseAdapter;
.source "ProfileIconSourceActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/acm;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/acm;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/bbm/ui/activities/acl;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/acm;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/acl;

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/acm;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ProfileIconSourceActivity;->e(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/acm;->a(I)Lcom/bbm/ui/activities/acl;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_40

    new-instance v1, Lcom/bbm/ui/activities/aco;

    iget-object v0, p0, Lcom/bbm/ui/activities/acm;->a:Lcom/bbm/ui/activities/ProfileIconSourceActivity;

    invoke-direct {v1, v0}, Lcom/bbm/ui/activities/aco;-><init>(Lcom/bbm/ui/activities/ProfileIconSourceActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acm;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ab

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0413

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/activities/aco;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0414

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/activities/aco;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2d
    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/acm;->a(I)Lcom/bbm/ui/activities/acl;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/ui/activities/aco;->a:Landroid/widget/ImageView;

    iget v3, v1, Lcom/bbm/ui/activities/acl;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/bbm/ui/activities/aco;->b:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/bbm/ui/activities/acl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/aco;

    goto :goto_2d
.end method
