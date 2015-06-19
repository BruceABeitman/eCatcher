.class public final Lcom/spotify/android/paste/app/FontSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/android/paste/app/FontSupport$ViewFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/android/paste/app/FontSupport;->a:Ljava/util/Map;

    invoke-static {}, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;->values()[Lcom/spotify/android/paste/app/FontSupport$ViewFactory;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_1d

    aget-object v3, v1, v0

    sget-object v4, Lcom/spotify/android/paste/app/FontSupport;->a:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/spotify/android/paste/app/FontSupport;

    invoke-direct {v1}, Lcom/spotify/android/paste/app/FontSupport;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7

    sget-object v0, Lcom/spotify/android/paste/app/FontSupport;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;

    if-nez v0, :cond_1c

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "<fragment> tags are not supported when FontSupport is in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {v0, p2, p3}, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/FontSupport$ViewFactory;->b()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {p2, p3, v0}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_33
    invoke-virtual {v1}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-static {p2, v1, p3, v0}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V

    :cond_3c
    move-object v0, v1

    goto :goto_1b
.end method
