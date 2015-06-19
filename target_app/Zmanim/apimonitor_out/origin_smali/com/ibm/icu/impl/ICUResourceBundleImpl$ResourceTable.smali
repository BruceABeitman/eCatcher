.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourceTable"
.end annotation


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    const-wide v2, 0xffffffffL

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v0

    int-to-long v4, v0

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rootResource:J

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->noFallback:Z

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->baseName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->localeID:Ljava/lang/String;

    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->ulocale:Lcom/ibm/icu/util/ULocale;

    iput-object p4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->loader:Ljava/lang/ClassLoader;

    const-string v2, ""

    iget-wide v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rootResource:J

    iget-boolean v6, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->isTopLevel:Z

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->initialize(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->initialize(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;Z)V

    return-void
.end method

.method private countItems()I
    .registers 5

    iget-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resource:J

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->RES_GET_OFFSET(J)I

    move-result v0

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    invoke-static {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getChar([BI)C

    move-result v1

    return v1
.end method


# virtual methods
.method public getOffset(II)I
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    invoke-static {p2}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getCharOffset(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getChar([BI)C

    move-result v0

    return v0
.end method

.method protected handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
    .registers 17

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    if-le p1, v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-wide v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resource:J

    invoke-static {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->RES_GET_OFFSET(J)I

    move-result v11

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getCharOffset(I)I

    move-result v0

    add-int v10, v11, v0

    invoke-virtual {p0, v10, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getOffset(II)I

    move-result v9

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    invoke-static {v0, v9}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->RES_GET_KEY([BI)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    iget v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getCharOffset(I)I

    move-result v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getIntOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    const-wide v5, 0xffffffffL

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    invoke-static {v0, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I

    move-result v0

    int-to-long v7, v0

    and-long v2, v5, v7

    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->isTopLevel:Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_57

    move-object v4, v1

    :goto_4c
    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;[Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4c
.end method

.method protected handleGetImpl(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[I[Z)Lcom/ibm/icu/util/UResourceBundle;
    .registers 17

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resource:J

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->RES_GET_OFFSET(J)I

    move-result v10

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getCharOffset(I)I

    move-result v0

    add-int v9, v10, v0

    const/4 v0, 0x0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    invoke-virtual {p0, v1, v9, p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->findKey(IILcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)I

    move-result v1

    aput v1, p4, v0

    const/4 v0, 0x0

    aget v0, p4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x0

    goto :goto_5

    :cond_24
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getCharOffset(I)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getIntOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->rawData:[B

    invoke-static {v2, v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->isTopLevel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_59

    move-object v4, p1

    :goto_4d
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;[Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_5

    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4d
.end method

.method initialize(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;Z)V
    .registers 8

    if-eqz p5, :cond_5

    invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V

    :cond_5
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resource:J

    iput-boolean p6, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->isTopLevel:Z

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->countItems()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->size:I

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->resPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createLookupCache()V

    return-void
.end method
