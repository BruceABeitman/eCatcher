.class public Lcom/bbm/ui/activities/jz;
.super Landroid/widget/BaseAdapter;
.source "FilePickerActivity.java"


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/bbm/ui/activities/jz;->b:Landroid/content/Context;

    return-void
.end method

.method protected static a(Ljava/io/File;)I
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/activities/kc;Z)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    new-instance v1, Lcom/bbm/ui/activities/ka;

    invoke-direct {v1, p0, p1, p2}, Lcom/bbm/ui/activities/ka;-><init>(Lcom/bbm/ui/activities/jz;Lcom/bbm/ui/activities/kc;Z)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/jz;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    sget-object v0, Lcom/bbm/ui/activities/kc;->a:Lcom/bbm/ui/activities/kc;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/jz;->a(Lcom/bbm/ui/activities/kc;Z)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/jz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v3, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/jz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez p2, :cond_a3

    iget-object v1, p0, Lcom/bbm/ui/activities/jz;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c2

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/bbm/ui/activities/kb;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/kb;-><init>(Lcom/bbm/ui/activities/jz;)V

    const v1, 0x7f0a045b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    const v1, 0x7f0a045c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbm/ui/activities/kb;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0177

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbm/ui/activities/kb;->c:Landroid/widget/TextView;

    const v1, 0x7f0a045f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbm/ui/activities/kb;->d:Landroid/widget/TextView;

    const v1, 0x7f0a045d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/bbm/ui/activities/kb;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_58
    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    const v3, 0x7f020110

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/bbm/ui/activities/jz;->a(Ljava/io/File;)I

    move-result v0

    iget-object v1, v1, Lcom/bbm/ui/activities/kb;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/activities/jz;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a2
    return-object p2

    :cond_a3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/activities/kb;

    goto :goto_58

    :cond_aa
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/util/bj;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_130

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_116

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_116

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/bbm/ui/activities/FilePickerActivity;->k()Lcom/bbm/util/b/g;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5, v2, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    :goto_e1
    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/activities/jz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const v6, 0x10014

    invoke-static {v3, v4, v5, v6}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/bbm/ui/activities/kb;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bbm/ui/activities/jz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bj;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    :cond_116
    invoke-static {}, Lcom/bbm/ui/activities/FilePickerActivity;->k()Lcom/bbm/util/b/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget-object v6, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    goto :goto_e1

    :cond_130
    iget-object v2, v1, Lcom/bbm/ui/activities/kb;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bbm/util/bj;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e1
.end method
