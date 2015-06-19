.class public final Lcom/instagram/android/e/d;
.super Lcom/instagram/base/a/a;
.source "RegionPickDialog.java"


# instance fields
.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/instagram/android/e/b;

.field private ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/e/d;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/e/d;->ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/e/d;)Lcom/instagram/android/e/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/e/d;->ab:Lcom/instagram/android/e/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Lcom/instagram/base/a/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/instagram/common/n/a;

    invoke-direct {v1, v0}, Lcom/instagram/common/n/a;-><init>(Landroid/telephony/TelephonyManager;)V

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/e/d;->aa:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/n/a;->a(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/e/d;->aa:Ljava/util/List;

    new-instance v5, Lcom/instagram/android/e/c;

    const-string v6, "%s (+%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lcom/instagram/android/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_6b
    iget-object v0, p0, Lcom/instagram/android/e/d;->aa:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/instagram/base/a/a;->c(Landroid/os/Bundle;)Landroid/app/Dialog;

    new-instance v2, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/facebook/az;->select_your_country:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/e/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->dialog_country_codes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/facebook/av;->country_code_list:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sget v1, Lcom/facebook/av;->search:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iput-object v1, p0, Lcom/instagram/android/e/d;->ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    iget-object v1, p0, Lcom/instagram/android/e/d;->ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    new-instance v4, Lcom/instagram/android/e/f;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/e/f;-><init>(Lcom/instagram/android/e/d;B)V

    invoke-virtual {v1, v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    iget-object v4, p0, Lcom/instagram/android/e/d;->ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v4}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lcom/instagram/android/e/d;->ac:Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    invoke-virtual {v4, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setClearButtonColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lcom/instagram/android/e/b;

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->n()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/instagram/android/e/d;->aa:Ljava/util/List;

    invoke-direct {v1, v4, v5}, Lcom/instagram/android/e/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/e/d;->ab:Lcom/instagram/android/e/b;

    iget-object v1, p0, Lcom/instagram/android/e/d;->ab:Lcom/instagram/android/e/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v3}, Lcom/instagram/ui/dialog/b;->a(Landroid/view/View;)Lcom/instagram/ui/dialog/b;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    invoke-virtual {v2}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    invoke-virtual {v2}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/e/e;

    invoke-direct {v2, p0, v1}, Lcom/instagram/android/e/e;-><init>(Lcom/instagram/android/e/d;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/a;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/e/d;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
