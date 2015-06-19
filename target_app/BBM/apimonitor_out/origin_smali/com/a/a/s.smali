.class public final Lcom/a/a/s;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/a/a/i;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p8, p0, Lcom/a/a/s;->h:I

    iput-object p1, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/a/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/a/a/s;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/a/a/s;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/a/a/s;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/a/a/s;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/a/a/s;->j:Z

    iput p11, p0, Lcom/a/a/s;->k:I

    return-void
.end method

.method public static a(Ljava/util/List;ILjava/lang/String;ZI)Lcom/a/a/s;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/a/a/s;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_52

    const/4 v0, 0x7

    move v1, v0

    :goto_c
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v2

    add-int/lit8 v0, v2, 0x1

    if-lt v0, v1, :cond_4e

    :goto_24
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2e

    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v7, v0

    move v0, v2

    goto :goto_24

    :cond_2e
    new-instance v0, Lcom/a/a/s;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    const/4 v6, 0x5

    aget-object v6, v7, v6

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move v8, p1

    move-object v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0

    :cond_4e
    move v2, v0

    goto :goto_12

    :cond_50
    move v0, v2

    goto :goto_24

    :cond_52
    move v1, v0

    goto :goto_c
.end method


# virtual methods
.method public final a()Lcom/a/a/k;
    .registers 2

    sget-object v0, Lcom/a/a/k;->d:Lcom/a/a/k;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/a/a/s;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/a/a/s;

    iget v2, p0, Lcom/a/a/s;->h:I

    iget v3, p1, Lcom/a/a/s;->h:I

    if-ne v2, v3, :cond_6d

    iget v2, p0, Lcom/a/a/s;->h:I

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/a/a/s;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_21
    iget-boolean v2, p0, Lcom/a/a/s;->j:Z

    iget-boolean v3, p1, Lcom/a/a/s;->j:Z

    if-ne v2, v3, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/a/a/s;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/s;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_6d
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 8

    const/4 v6, 0x7

    const/4 v1, 0x0

    iget v0, p0, Lcom/a/a/s;->h:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/a/a/s;->i:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/a/a/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/a/a/s;->j:Z

    if-eqz v0, :cond_54

    const/16 v0, 0x4cf

    :goto_19
    add-int/2addr v0, v2

    new-array v4, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/a/s;->b:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/a/a/s;->c:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/a/a/s;->d:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/a/a/s;->e:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/a/a/s;->f:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/a/a/s;->g:Ljava/lang/String;

    aput-object v3, v4, v2

    move v2, v1

    :goto_3f
    if-ge v2, v6, :cond_59

    aget-object v3, v4, v2

    mul-int/lit8 v5, v0, 0x1f

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4b
    add-int v3, v5, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_3f

    :cond_52
    move v0, v1

    goto :goto_10

    :cond_54
    const/16 v0, 0x4d5

    goto :goto_19

    :cond_57
    move v0, v1

    goto :goto_4b

    :cond_59
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/a/s;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/a/s;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/a/a/s;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/a/a/s;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/a/a/s;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/a/a/s;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/a/a/s;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/a/a/s;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/a/a/s;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/a/a/s;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
