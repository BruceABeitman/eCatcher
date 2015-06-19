.class final Lcom/mixpanel/android/surveys/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/mixpanel/android/surveys/a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v0, -0x1

    if-nez p2, :cond_11

    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/a;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :goto_a
    iget-object v1, p0, Lcom/mixpanel/android/surveys/a;->b:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_11
    sget v0, Lcom/mixpanel/android/b;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :pswitch_25
    sget v0, Lcom/mixpanel/android/c;->b:I

    goto :goto_a

    :pswitch_28
    sget v0, Lcom/mixpanel/android/c;->c:I

    goto :goto_a

    :pswitch_2b
    sget v0, Lcom/mixpanel/android/c;->d:I

    goto :goto_a

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/surveys/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    return-void
.end method
