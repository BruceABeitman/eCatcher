.class public final Lcom/a/a/e;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/a/a/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/k;
    .registers 2

    sget-object v0, Lcom/a/a/k;->n:Lcom/a/a/k;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_6

    move v0, v2

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, Lcom/a/a/e;

    if-nez v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    check-cast p1, Lcom/a/a/e;

    iget-object v0, p0, Lcom/a/a/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/a/a/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v3

    goto :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/a/a/e;->b:Ljava/util/List;

    if-nez v0, :cond_26

    iget-object v0, p1, Lcom/a/a/e;->b:Ljava/util/List;

    if-nez v0, :cond_24

    move v0, v2

    goto :goto_5

    :cond_24
    move v0, v3

    goto :goto_5

    :cond_26
    iget-object v0, p0, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p1, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v5, v0, :cond_36

    move v0, v3

    goto :goto_5

    :cond_36
    move v4, v3

    :goto_37
    if-ge v4, v5, :cond_55

    iget-object v0, p0, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    move v0, v3

    goto :goto_5

    :cond_51
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_37

    :cond_55
    move v0, v2

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/a/a/e;->b:Ljava/util/List;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v2, v2, 0x1f

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2a
    add-int/2addr v0, v2

    move v2, v0

    goto :goto_16

    :cond_2d
    move v0, v1

    goto :goto_b

    :cond_2f
    move v0, v1

    goto :goto_2a

    :cond_31
    move v2, v0

    :cond_32
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android-custom: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a/e;->b:Ljava/util/List;

    if-nez v0, :cond_2d

    const-string v0, "null"

    :goto_25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    iget-object v0, p0, Lcom/a/a/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method
