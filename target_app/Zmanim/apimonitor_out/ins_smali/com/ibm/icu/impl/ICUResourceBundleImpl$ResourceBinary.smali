.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;
.super Lcom/ibm/icu/impl/ICUResourceBundle;
.source "ICUResourceBundleImpl.java"
.field private value:[B
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ibm/icu/impl/ICUResourceBundle;)V
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;-><init>()V
invoke-static {p0, p5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->assign(Lcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/impl/ICUResourceBundle;)V
iput-wide p3, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:J
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->key:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resPath:Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->getValue()[B
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->value:[B
return-void
.end method
.method private getValue()[B
.registers 7
iget-wide v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:J
invoke-static {v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->RES_GET_OFFSET(J)I
move-result v3
iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->rawData:[B
invoke-static {v4, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getInt([BI)I
move-result v2
const/4 v4, 0x1
invoke-static {v4}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->getIntOffset(I)I
move-result v4
add-int v0, v3, v4
new-array v1, v2, [B
iget-object v4, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->rawData:[B
const/4 v5, 0x0
invoke-static {v4, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v1
.end method
.method public getBinary()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->value:[B
invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public getBinary([B)[B
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->value:[B
return-object v0
.end method