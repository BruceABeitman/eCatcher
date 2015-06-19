.class public Lcom/twidroid/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AutoCompleteHelper"

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/twidroid/d/c;->b:[C

    return-void

    nop

    :array_a
    .array-data 0x2
        0x20t 0x0t
        0x40t 0x0t
        0x23t 0x0t
        0x25t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/twidroid/b/a/b;
    .registers 1

    invoke-static {}, Lcom/twidroid/d/c;->c()Lcom/twidroid/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;I)Lcom/twidroid/d/e;
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    new-instance v0, Lcom/twidroid/d/e;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/d/e;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Character;Ljava/lang/Character;)V

    :goto_13
    return-object v0

    :cond_14
    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    const/4 v4, -0x1

    if-le v0, v4, :cond_90

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Lcom/twidroid/d/c;->a(C)Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3f
    if-nez v0, :cond_8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :goto_46
    move v0, v1

    :goto_47
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_8b

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lcom/twidroid/d/c;->a(C)Z

    move-result v1

    if-eqz v1, :cond_88

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_64
    if-nez v3, :cond_6e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_6e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Lcom/twidroid/d/e;

    invoke-static {v1}, Lcom/twidroid/d/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/d/e;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Character;Ljava/lang/Character;)V

    goto :goto_13

    :cond_85
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_88
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_8b
    move-object v5, v2

    move-object v3, v2

    goto :goto_64

    :cond_8e
    move-object v6, v0

    goto :goto_46

    :cond_90
    move-object v4, v2

    move-object v0, v2

    goto :goto_3f
.end method

.method public static a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;)Lcom/twidroid/net/c/k;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;Z)Lcom/twidroid/net/c/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/net/c/k;
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;Z)Lcom/twidroid/net/c/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;Z)Lcom/twidroid/net/c/k;
    .registers 11

    :try_start_0
    new-instance v0, Lcom/twidroid/d/c$2;

    invoke-direct {v0, p1, p2}, Lcom/twidroid/d/c$2;-><init>(Landroid/view/View;Lcom/twidroid/d/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/net/c/a/b;

    const/4 v2, 0x0

    new-instance v3, Lcom/twidroid/net/c/a/b;

    invoke-static {}, Lcom/twidroid/d/c;->b()Lcom/twidroid/UberSocialApplication;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, p3, p4, v5}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;ZZ)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/net/c/a/f;[Lcom/twidroid/net/c/a/b;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    if-eqz p2, :cond_1f

    invoke-interface {p2, v0}, Lcom/twidroid/d/d;->a(Ljava/lang/Exception;)V

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Z)Lcom/twidroid/net/c/k;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;Lcom/twidroid/model/twitter/c;Z)Lcom/twidroid/net/c/k;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    const/16 v3, 0x20

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    return-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_22

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_22

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_c

    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_22
.end method

.method public static a(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_23

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    check-cast p0, Landroid/view/ViewGroup;

    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/twidroid/d/d;)V
    .registers 5

    new-instance v0, Lcom/twidroid/d/c$1;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/d/c$1;-><init>(Landroid/view/View;Lcom/twidroid/d/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/d/c$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method private static a(C)Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, Lcom/twidroid/d/c;->b:[C

    array-length v2, v2

    if-ge v0, v2, :cond_e

    sget-object v2, Lcom/twidroid/d/c;->b:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static b()Lcom/twidroid/UberSocialApplication;
    .registers 1

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Lcom/twidroid/d/d;)Lcom/twidroid/net/c/k;
    .registers 9

    :try_start_0
    new-instance v0, Lcom/twidroid/d/c$3;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/d/c$3;-><init>(Landroid/view/View;Lcom/twidroid/d/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/net/c/a/b;

    const/4 v2, 0x0

    new-instance v3, Lcom/twidroid/net/c/a/b;

    invoke-static {}, Lcom/twidroid/d/c;->b()Lcom/twidroid/UberSocialApplication;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/twidroid/net/c/a/b;-><init>(Lcom/twidroid/UberSocialApplication;ZZ)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/net/c/k;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    if-eqz p1, :cond_20

    invoke-interface {p1, v0}, Lcom/twidroid/d/d;->a(Ljava/lang/Exception;)V

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_23

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    check-cast p0, Landroid/view/ViewGroup;

    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method private static c()Lcom/twidroid/b/a/b;
    .registers 1

    invoke-static {}, Lcom/twidroid/d/c;->b()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static d()Lcom/twidroid/model/twitter/c;
    .registers 1

    invoke-static {}, Lcom/twidroid/d/c;->c()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    return-object v0
.end method
