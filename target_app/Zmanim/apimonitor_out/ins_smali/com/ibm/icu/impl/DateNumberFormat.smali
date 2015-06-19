.class public final Lcom/ibm/icu/impl/DateNumberFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "DateNumberFormat.java"
.field private static CACHE:Lcom/ibm/icu/impl/SimpleCache; = null
.field private static final serialVersionUID:J = -0x57a5d92a02d4dc49L
.field private transient decimalBuf:[C
.field private maxIntDigits:I
.field private minIntDigits:I
.field private minusSign:C
.field private positiveOnly:Z
.field private zeroDigit:C
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;C)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z
const/16 v0, 0x14
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/DateNumberFormat;->initialize(Lcom/ibm/icu/util/ULocale;C)V
return-void
.end method
.method private initialize(Lcom/ibm/icu/util/ULocale;C)V
.registers 10
const/4 v6, 0x1
const/4 v5, 0x0
sget-object v4, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
invoke-virtual {v4, p1}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, [C
move-object v0, v4
check-cast v0, [C
move-object v1, v0
if-nez v1, :cond_31
const-string v4, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v4, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
check-cast v3, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v4, "NumberElements"
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v4, 0x2
new-array v1, v4, [C
aput-char p2, v1, v5
const/4 v4, 0x6
aget-object v4, v2, v4
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
aput-char v4, v1, v6
sget-object v4, Lcom/ibm/icu/impl/DateNumberFormat;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
invoke-virtual {v4, p1, v1}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_31
aget-char v4, v1, v5
iput-char v4, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
aget-char v4, v1, v6
iput-char v4, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C
return-void
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 3
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
const/16 v0, 0x14
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v4, 0x0
if-eqz p1, :cond_d
invoke-super {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
instance-of v2, p1, Lcom/ibm/icu/impl/DateNumberFormat;
if-nez v2, :cond_f
:cond_d
move v2, v4
:goto_e
return v2
:cond_f
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;
move-object v1, v0
iget v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
iget v3, v1, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
if-ne v2, v3, :cond_33
iget v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I
iget v3, v1, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I
if-ne v2, v3, :cond_33
iget-char v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
iget-char v3, v1, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
if-ne v2, v3, :cond_33
iget-char v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C
iget-char v3, v1, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C
if-ne v2, v3, :cond_33
iget-boolean v2, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z
iget-boolean v3, v1, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z
if-ne v2, v3, :cond_33
const/4 v2, 0x1
goto :goto_e
:cond_33
move v2, v4
goto :goto_e
.end method
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 7
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "StringBuffer format(double, StringBuffer, FieldPostion) is not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 14
const/4 v8, 0x0
const-wide/16 v5, 0x0
cmp-long v5, p1, v5
if-gez v5, :cond_c
iget-char v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C
invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_c
long-to-int v3, p1
iget-object v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
array-length v5, v5
iget v6, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
if-ge v5, v6, :cond_3e
iget-object v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
array-length v5, v5
move v2, v5
:goto_18
const/4 v5, 0x1
sub-int v0, v2, v5
:goto_1b
iget-object v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
rem-int/lit8 v6, v3, 0xa
iget-char v7, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
add-int/2addr v6, v7
int-to-char v6, v6
aput-char v6, v5, v0
div-int/lit8 v3, v3, 0xa
if-eqz v0, :cond_2b
if-nez v3, :cond_42
:cond_2b
iget v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I
sub-int v6, v2, v0
sub-int v4, v5, v6
:goto_31
if-lez v4, :cond_45
iget-object v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
add-int/lit8 v0, v0, -0x1
iget-char v6, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
aput-char v6, v5, v0
add-int/lit8 v4, v4, -0x1
goto :goto_31
:cond_3e
iget v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
move v2, v5
goto :goto_18
:cond_42
add-int/lit8 v0, v0, -0x1
goto :goto_1b
:cond_45
sub-int v1, v2, v0
iget-object v5, p0, Lcom/ibm/icu/impl/DateNumberFormat;->decimalBuf:[C
invoke-virtual {p3, v5, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V
invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I
move-result v5
if-nez v5, :cond_59
invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V
:goto_58
return-object p3
:cond_59
invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V
goto :goto_58
.end method
.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getMaximumIntegerDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
return v0
.end method
.method public getMinimumIntegerDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I
return v0
.end method
.method public getZeroDigit()C
.registers 2
iget-char v0, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
return v0
.end method
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.registers 16
const-wide/16 v4, 0x0
const/4 v8, 0x0
const/4 v3, 0x0
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
const/4 v6, 0x0
:goto_9
add-int v9, v0, v6
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v10
if-ge v9, v10, :cond_21
add-int v9, v0, v6
invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C
move-result v1
if-nez v6, :cond_39
iget-char v9, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minusSign:C
if-ne v1, v9, :cond_39
iget-boolean v9, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z
if-eqz v9, :cond_35
:cond_21
const/4 v7, 0x0
if-eqz v8, :cond_34
if-eqz v3, :cond_2a
const-wide/16 v9, -0x1
mul-long/2addr v9, v4
move-wide v4, v9
:cond_2a
new-instance v7, Ljava/lang/Long;
invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V
add-int v9, v0, v6
invoke-virtual {p2, v9}, Ljava/text/ParsePosition;->setIndex(I)V
:cond_34
return-object v7
:cond_35
const/4 v3, 0x1
:goto_36
add-int/lit8 v6, v6, 0x1
goto :goto_9
:cond_39
iget-char v9, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
sub-int v2, v1, v9
if-ltz v2, :cond_43
const/16 v9, 0x9
if-ge v9, v2, :cond_47
:cond_43
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I
move-result v2
:cond_47
if-ltz v2, :cond_21
const/16 v9, 0x9
if-gt v2, v9, :cond_21
const/4 v8, 0x1
const-wide/16 v9, 0xa
mul-long/2addr v9, v4
int-to-long v11, v2
add-long v4, v9, v11
goto :goto_36
.end method
.method public setMaximumIntegerDigits(I)V
.registers 2
iput p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->maxIntDigits:I
return-void
.end method
.method public setMinimumIntegerDigits(I)V
.registers 2
iput p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->minIntDigits:I
return-void
.end method
.method public setParsePositiveOnly(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->positiveOnly:Z
return-void
.end method
.method public setZeroDigit(C)V
.registers 2
iput-char p1, p0, Lcom/ibm/icu/impl/DateNumberFormat;->zeroDigit:C
return-void
.end method