.class Lcom/twidroid/activity/o;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Lcom/twidroid/activity/p;

.field b:Lcom/twidroid/model/b;

.field final synthetic c:Lcom/twidroid/activity/OutboxListing;


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/OutboxListing;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/b;

    iget-wide v0, v0, Lcom/twidroid/model/b;->a:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/b;

    iput-object v0, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    new-instance v0, Lcom/twidroid/activity/p;

    invoke-direct {v0}, Lcom/twidroid/activity/p;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    iget-object v2, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    const v0, 0x7f090101

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/activity/p;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/twidroid/activity/p;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    iget-object v0, v0, Lcom/twidroid/activity/p;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v2, v2, Lcom/twidroid/activity/OutboxListing;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->az()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    const v0, 0x7f090040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/twidroid/activity/p;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    const v0, 0x7f090144

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/activity/p;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    const v0, 0x7f090141

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twidroid/activity/p;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twidroid/activity/o;->c:Lcom/twidroid/activity/OutboxListing;

    iget-object v0, v0, Lcom/twidroid/activity/OutboxListing;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    iget v2, v2, Lcom/twidroid/model/b;->c:I

    invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    iget-object v2, v2, Lcom/twidroid/activity/p;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    iget-object v2, v0, Lcom/twidroid/activity/p;->d:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2022 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    iget v0, v0, Lcom/twidroid/model/b;->b:I

    if-ne v0, v4, :cond_cd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directmessage to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    iget-object v4, v4, Lcom/twidroid/model/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/o;->a:Lcom/twidroid/activity/p;

    iget-object v0, v0, Lcom/twidroid/activity/p;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    iget-object v2, v2, Lcom/twidroid/model/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_cd
    iget-object v0, p0, Lcom/twidroid/activity/o;->b:Lcom/twidroid/model/b;

    iget v0, v0, Lcom/twidroid/model/b;->b:I

    if-nez v0, :cond_d6

    const-string v0, "Tweet"

    goto :goto_b6

    :cond_d6
    const-string v0, "Reply"

    goto :goto_b6
.end method
