.class public final Lcom/spotify/mobile/android/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/r;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/ui/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/ViewGroup;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/ui/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/r;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/f;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/f;->c:Landroid/view/ViewGroup;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/f;->d:I

    new-instance v0, Lcom/spotify/mobile/android/ui/f$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/f$1;-><init>(Lcom/spotify/mobile/android/ui/f;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/f;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;Z)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    if-eqz p3, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/j;->d(Landroid/support/v4/app/w;)V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->d()Z

    :cond_28
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/spotify/mobile/android/ui/g;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/g;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/support/v4/app/w;Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/w;)V

    invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/f;->f()V

    return-void
.end method

.method private a(Landroid/support/v4/app/w;)V
    .registers 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_b
    if-ltz v3, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    if-lez v2, :cond_2b

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/j;->c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, -0x1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_25
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_b

    :cond_2b
    if-lez v1, :cond_3a

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/j;->b(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/h;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    goto :goto_25

    :cond_3a
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/j;->a(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/i;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_25

    :cond_46
    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/f;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/f;)Landroid/support/v4/app/r;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/f;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/f;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/f;->d:I

    return v0
.end method

.method private e()Lcom/spotify/mobile/android/ui/g;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->a()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    move-object v0, v1

    goto :goto_a

    :cond_24
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/j;->c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;

    move-result-object v0

    goto :goto_a
.end method

.method private f()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/f;->a()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/k;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/k;->H()V

    goto :goto_9

    :cond_19
    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/ui/ActionBarTitle;
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/f;->e()Lcom/spotify/mobile/android/ui/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/g;->f()Lcom/spotify/mobile/android/ui/ActionBarTitle;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Landroid/view/View;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->a()I

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->b()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_24

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->c()Ljava/lang/Class;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_46

    aget-object v0, v2, v1

    check-cast v0, Landroid/os/Bundle;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_48

    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :pswitch_25
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    new-instance v5, Lcom/spotify/mobile/android/ui/i;

    invoke-direct {v5, p0, v0}, Lcom/spotify/mobile/android/ui/i;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :pswitch_30
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    new-instance v5, Lcom/spotify/mobile/android/ui/h;

    invoke-direct {v5, p0, v0}, Lcom/spotify/mobile/android/ui/h;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :pswitch_3b
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    new-instance v5, Lcom/spotify/mobile/android/ui/g;

    invoke-direct {v5, p0, v0}, Lcom/spotify/mobile/android/ui/g;-><init>(Lcom/spotify/mobile/android/ui/f;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_25
        :pswitch_30
        :pswitch_3b
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/j;->c(Landroid/support/v4/app/w;)Lcom/spotify/mobile/android/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/g;->d()Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/g;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    :cond_27
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;Z)V

    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/ActionBarTitle;Z)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/k;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/support/v4/app/Fragment;
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/f;->e()Lcom/spotify/mobile/android/ui/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/g;->d()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final b(Lcom/spotify/mobile/android/ui/k;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/j;->d(Landroid/support/v4/app/w;)V

    invoke-direct {p0, v2}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/support/v4/app/w;)V

    invoke-virtual {v2}, Landroid/support/v4/app/w;->b()I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->a:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->b()Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/f;->f()V

    move v0, v1

    goto :goto_a
.end method

.method public final d()Landroid/os/Bundle;
    .registers 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->e()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    const-string v3, "entries"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
