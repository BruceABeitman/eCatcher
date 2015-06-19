.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"
.field private value:[I
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V
invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->key:Ljava/lang/String;
iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:J
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->size:I
iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resPath:Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->getValue()[I
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->value:[I
return-void
.end method
.method private getValue()[I
.registers 8
iget-wide v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:J
invoke-static {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->RES_GET_OFFSET(J)I
move-result v3
iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->rawData:[B
invoke-static {v5, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v2
const/4 v5, 0x1
invoke-static {v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->getIntOffset(I)I
move-result v5
add-int v1, v3, v5
new-array v4, v2, [I
const/4 v0, 0x0
:goto_16
if-ge v0, v2, :cond_28
iget-object v5, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->rawData:[B
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->getIntOffset(I)I
move-result v6
add-int/2addr v6, v1
invoke-static {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v5
aput v5, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_28
return-object v4
.end method
.method public getIntVector()[I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->value:[I
return-object v0
.end method