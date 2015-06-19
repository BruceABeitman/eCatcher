.class public final Landroid/support/v4/app/e;
.super Landroid/view/LayoutInflater;
.source "ChildFragmentLayoutInflator.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/app/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/v4/app/e;->c:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public final cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 5

    new-instance v0, Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/e;->c:Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/e;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFilter()Landroid/view/LayoutInflater$Filter;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/e;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->i()Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/e;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->q()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/s;)V

    iget-object v2, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/s;)V

    return-object v2
.end method

.method protected final onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    sget-object v2, Landroid/support/v4/app/e;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_17

    aget-object v0, v2, v1

    :try_start_9
    iget-object v4, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v4, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_12

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_11
.end method

.method public final setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void
.end method

.method public final setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method public final setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    iget-object v0, p0, Landroid/support/v4/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    return-void
.end method
