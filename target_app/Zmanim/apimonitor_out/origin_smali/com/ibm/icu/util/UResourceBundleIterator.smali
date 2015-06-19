.class public Lcom/ibm/icu/util/UResourceBundleIterator;
.super Ljava/lang/Object;
.source "UResourceBundleIterator.java"


# instance fields
.field private bundle:Lcom/ibm/icu/util/UResourceBundle;

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/UResourceBundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    iput-object p1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Lcom/ibm/icu/util/UResourceBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lcom/ibm/icu/util/UResourceTypeMismatchException;
        }
    .end annotation

    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    return-void
.end method
