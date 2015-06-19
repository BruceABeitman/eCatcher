.class public Lcom/ibm/icu/impl/SortedSetRelation;
.super Ljava/lang/Object;
.source "SortedSetRelation.java"


# static fields
.field public static final A:I = 0x6

.field public static final ADDALL:I = 0x7

.field public static final ANY:I = 0x7

.field public static final A_AND_B:I = 0x2

.field public static final A_NOT_B:I = 0x4

.field public static final B:I = 0x3

.field public static final B_NOT_A:I = 0x1

.field public static final B_REMOVEALL:I = 0x1

.field public static final COMPLEMENTALL:I = 0x5

.field public static final CONTAINS:I = 0x6

.field public static final DISJOINT:I = 0x5

.field public static final EQUALS:I = 0x2

.field public static final ISCONTAINED:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NO_A:I = 0x1

.field public static final NO_B:I = 0x4

.field public static final REMOVEALL:I = 0x4

.field public static final RETAINALL:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 7

    packed-switch p1, :pswitch_data_58

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_22
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :goto_25
    :pswitch_25
    return-object p0

    :pswitch_26
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :pswitch_2d
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    goto :goto_25

    :pswitch_31
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    goto :goto_25

    :pswitch_35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :pswitch_44
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    :pswitch_53
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    goto :goto_25

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_53
        :pswitch_44
        :pswitch_31
        :pswitch_26
        :pswitch_2d
        :pswitch_35
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method public static hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-ltz p1, :cond_7

    const/4 v8, 0x7

    if-le p1, v8, :cond_26

    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Relation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_26
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_46

    move v3, v11

    :goto_2b
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_48

    move v1, v11

    :goto_30
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_4a

    move v6, v11

    :goto_35
    packed-switch p1, :pswitch_data_e8

    :cond_38
    :pswitch_38
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-nez v8, :cond_72

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-nez v8, :cond_70

    move v8, v11

    :goto_45
    return v8

    :cond_46
    move v3, v10

    goto :goto_2b

    :cond_48
    move v1, v10

    goto :goto_30

    :cond_4a
    move v6, v10

    goto :goto_35

    :pswitch_4c
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v8

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v9

    if-ge v8, v9, :cond_38

    move v8, v10

    goto :goto_45

    :pswitch_58
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v8

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v9

    if-le v8, v9, :cond_38

    move v8, v10

    goto :goto_45

    :pswitch_64
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v8

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v9

    if-eq v8, v9, :cond_38

    move v8, v10

    goto :goto_45

    :cond_70
    move v8, v6

    goto :goto_45

    :cond_72
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-nez v8, :cond_7a

    move v8, v3

    goto :goto_45

    :cond_7a
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    :goto_8e
    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_bd

    if-nez v1, :cond_98

    move v8, v10

    goto :goto_45

    :cond_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a8

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a6

    move v8, v11

    goto :goto_45

    :cond_a6
    move v8, v6

    goto :goto_45

    :cond_a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b0

    move v8, v3

    goto :goto_45

    :cond_b0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_8e

    :cond_bd
    if-gez v7, :cond_d3

    if-nez v3, :cond_c3

    move v8, v10

    goto :goto_45

    :cond_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_cc

    move v8, v6

    goto/16 :goto_45

    :cond_cc
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    goto :goto_8e

    :cond_d3
    if-nez v6, :cond_d8

    move v8, v10

    goto/16 :goto_45

    :cond_d8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e1

    move v8, v3

    goto/16 :goto_45

    :cond_e1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    goto :goto_8e

    :pswitch_data_e8
    .packed-switch 0x2
        :pswitch_64
        :pswitch_58
        :pswitch_38
        :pswitch_38
        :pswitch_4c
    .end packed-switch
.end method
