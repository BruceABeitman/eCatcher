.class final Lcom/bbm/ui/activities/lo;
.super Landroid/widget/BaseAdapter;
.source "GroupChatHistorySettingsActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/lo;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(I)Lcom/bbm/ui/activities/ln;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ln;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->d(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/lo;->a(I)Lcom/bbm/ui/activities/ln;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v2, 0x0

    if-nez p2, :cond_50

    new-instance v1, Lcom/bbm/ui/activities/lq;

    iget-object v0, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-direct {v1, v0}, Lcom/bbm/ui/activities/lq;-><init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/lo;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c7

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a046b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/bbm/ui/activities/lq;->a:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_22
    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/lo;->a(I)Lcom/bbm/ui/activities/ln;

    move-result-object v3

    iget-object v1, v0, Lcom/bbm/ui/activities/lq;->a:Landroid/widget/RadioButton;

    iget-object v4, v3, Lcom/bbm/ui/activities/ln;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/bbm/ui/activities/lq;->a:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;

    move-result-object v1

    iget-object v5, v3, Lcom/bbm/ui/activities/ln;->b:Lcom/bbm/g/r;

    if-ne v1, v5, :cond_57

    const/4 v1, 0x1

    :goto_42
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, v0, Lcom/bbm/ui/activities/lq;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/bbm/ui/activities/lp;

    invoke-direct {v1, p0, v3}, Lcom/bbm/ui/activities/lp;-><init>(Lcom/bbm/ui/activities/lo;Lcom/bbm/ui/activities/ln;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_50
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/lq;

    goto :goto_22

    :cond_57
    move v1, v2

    goto :goto_42
.end method
