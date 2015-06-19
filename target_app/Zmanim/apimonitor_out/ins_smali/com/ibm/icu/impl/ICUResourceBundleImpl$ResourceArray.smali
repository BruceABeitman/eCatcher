.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V
invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V
iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->resource:J
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->key:Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->countItems()I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->size:I
iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->resPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->createLookupCache()V
return-void
.end method
.method private countItems()I
.registers 5
iget-wide v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->resource:J
invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->RES_GET_OFFSET(J)I
move-result v0
iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->rawData:[B
invoke-static {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->getInt([BI)I
move-result v1
return v1
.end method
.method public getStringArray()[Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetStringArray()[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 16
iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->size:I
if-le p1, v0, :cond_a
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_a
iget-wide v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->resource:J
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->RES_GET_OFFSET(J)I
move-result v10
add-int/lit8 v0, p1, 0x1
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->getIntOffset(I)I
move-result v0
add-int v9, v10, v0
const-wide v0, 0xffffffffL
iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->rawData:[B
invoke-static {v5, v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v5
int-to-long v5, v5
and-long v2, v0, v5
iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->isTopLevel:Z
const/4 v1, 0x1
if-ne v0, v1, :cond_3e
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
move-object v4, v0
:goto_30
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
move-object v0, p0
move-object v5, p2
move-object v6, p3
move-object v7, p0
move-object v8, p4
invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;[Z)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
return-object v0
:cond_3e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->resPath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v4, v0
goto :goto_30
.end method
.method protected handleGetImpl(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[I[Z)Lcom/ibm/icu/util/UResourceBundle;
.registers 9
const/4 v2, 0x0
invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->getIndex(Ljava/lang/String;)I
move-result v0
aput v0, p4, v2
aget v0, p4, v2
const/4 v1, -0x1
if-le v0, v1, :cond_13
aget v0, p4, v2
invoke-virtual {p0, v0, p2, p3, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetImpl(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;[Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
return-object v0
:cond_13
new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not get the correct value for index: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected handleGetStringArray()[Ljava/lang/String;
.registers 6
iget v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->size:I
new-array v3, v4, [Ljava/lang/String;
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceArray;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
move-result-object v2
const/4 v0, 0x0
:goto_9
invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_1d
add-int/lit8 v1, v0, 0x1
invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
move v0, v1
goto :goto_9
:cond_1d
return-object v3
.end method