.class public final Lcom/ibm/icu/text/UTF16$StringComparator;
.super Ljava/lang/Object;
.source "UTF16.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringComparator"
.end annotation


# static fields
.field private static final CODE_POINT_COMPARE_SURROGATE_OFFSET_:I = 0x2800

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1


# instance fields
.field private m_codePointCompare_:I

.field private m_foldCase_:I

.field private m_ignoreCase_:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/ibm/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UTF16$StringComparator;->setCodePointCompare(Z)V

    iput-boolean p2, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-ltz p3, :cond_d

    const/4 v0, 0x1

    if-le p3, v0, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput p3, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_foldCase_:I

    iget v1, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->cmpEquivFold(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v4

    const/4 v7, 0x0

    if-ge v4, v5, :cond_20

    const/4 v7, -0x1

    :cond_d
    :goto_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v6, :cond_1c

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_25

    :cond_1c
    if-ne v3, v6, :cond_28

    move v8, v7

    :goto_1f
    return v8

    :cond_20
    if-le v4, v5, :cond_d

    const/4 v7, 0x1

    move v6, v5

    goto :goto_d

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    iget v8, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v9, 0x8000

    if-ne v8, v9, :cond_94

    const/4 v8, 0x1

    move v2, v8

    :goto_31
    const v8, 0xd800

    if-lt v0, v8, :cond_91

    const v8, 0xd800

    if-lt v1, v8, :cond_91

    if-eqz v2, :cond_91

    const v8, 0xdbff

    if-gt v0, v8, :cond_52

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v4, :cond_52

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_67

    :cond_52
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_97

    if-eqz v3, :cond_97

    const/4 v8, 0x1

    sub-int v8, v3, v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_97

    :cond_67
    :goto_67
    const v8, 0xdbff

    if-gt v1, v8, :cond_7c

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v5, :cond_7c

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_91

    :cond_7c
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_9d

    if-eqz v3, :cond_9d

    const/4 v8, 0x1

    sub-int v8, v3, v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_9d

    :cond_91
    :goto_91
    sub-int v8, v0, v1

    goto :goto_1f

    :cond_94
    const/4 v8, 0x0

    move v2, v8

    goto :goto_31

    :cond_97
    const/16 v8, 0x2800

    sub-int v8, v0, v8

    int-to-char v0, v8

    goto :goto_67

    :cond_9d
    const/16 v8, 0x2800

    sub-int v8, v1, v8

    int-to-char v1, v8

    goto :goto_91
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    if-ne v1, v2, :cond_c

    const/4 v3, 0x0

    :goto_b
    return v3

    :cond_c
    if-nez v1, :cond_10

    const/4 v3, -0x1

    goto :goto_b

    :cond_10
    if-nez v2, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    iget-boolean v3, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-eqz v3, :cond_1d

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/UTF16$StringComparator;->compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_b

    :cond_1d
    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/UTF16$StringComparator;->compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_b
.end method

.method public getCodePointCompare()Z
    .registers 3

    iget v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v1, 0x8000

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getIgnoreCase()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    return v0
.end method

.method public getIgnoreCaseOption()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return v0
.end method

.method public setCodePointCompare(Z)V
    .registers 3

    if-eqz p1, :cond_8

    const v0, 0x8000

    iput v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    goto :goto_7
.end method

.method public setIgnoreCase(ZI)V
    .registers 5

    iput-boolean p1, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-ltz p2, :cond_7

    const/4 v0, 0x1

    if-le p2, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p2, p0, Lcom/ibm/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return-void
.end method
