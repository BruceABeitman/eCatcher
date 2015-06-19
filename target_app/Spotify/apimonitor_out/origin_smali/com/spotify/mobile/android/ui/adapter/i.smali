.class public final Lcom/spotify/mobile/android/ui/adapter/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/widget/b;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/widget/b;I)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/i$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/i$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/i;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->e:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    iput p3, p0, Lcom/spotify/mobile/android/ui/adapter/i;->c:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->d:Z

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->c:I

    const-string v2, "#"

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v0, "#"

    :cond_28
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->d:Z

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    invoke-virtual {v0}, Landroid/support/v4/widget/b;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const v6, 0x7f0a0147

    const v5, 0x7f0a0146

    const v4, 0x7f0a013c

    if-eqz p2, :cond_f

    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-nez v0, :cond_83

    :cond_f
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_1a
    const-string v0, ""

    if-lez p1, :cond_24

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/i;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_24
    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v2, :cond_86

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/adapter/i;->d:Z

    if-nez v3, :cond_86

    if-nez v0, :cond_51

    new-instance v0, Lcom/spotify/android/paste/widget/SectionHeaderView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/i;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/i;->b:Landroid/content/Context;

    const v3, 0x1010054

    invoke-static {v2, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_51
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a01fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_61
    :goto_61
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/widget/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    :goto_82
    return-object p2

    :cond_83
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_1a

    :cond_86
    if-nez v2, :cond_8c

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->d:Z

    if-eqz v1, :cond_61

    :cond_8c
    if-eqz v0, :cond_61

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_61

    :cond_94
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/i;->a:Landroid/support/v4/widget/b;

    invoke-virtual {v1, p1, v0, p3}, Landroid/support/v4/widget/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_82
.end method
