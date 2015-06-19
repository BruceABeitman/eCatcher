.class Lcom/twidroid/c/p;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/c/n;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/c/n;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/twidroid/c/p;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/p;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/p;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/p;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;

    invoke-virtual {v0}, Lcom/twidroid/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_14
    const v0, 0x7f090102

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/twidroid/c/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/twidroid/c/p$1;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/c/p$1;-><init>(Lcom/twidroid/c/p;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
