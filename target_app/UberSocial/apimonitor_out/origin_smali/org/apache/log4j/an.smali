.class Lorg/apache/log4j/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    new-instance v6, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/Vector;-><init>(I)V

    move v2, v3

    :goto_12
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v4, v3

    :goto_1f
    if-ge v4, v2, :cond_2d

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_34

    :cond_2d
    invoke-virtual {v6, v4, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_34
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1f

    :cond_38
    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/an;->a:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/an;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/an;->a:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
