.class public abstract Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;
.super Ljava/lang/Object;
.source "NumberFormat.java"
.field public static final FORMAT_CURRENCY:I = 0x1
.field public static final FORMAT_INTEGER:I = 0x4
.field public static final FORMAT_NUMBER:I = 0x0
.field public static final FORMAT_PERCENT:I = 0x2
.field public static final FORMAT_SCIENTIFIC:I = 0x3
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFormat(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
.registers 4
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Ljava/util/Locale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public createFormat(Ljava/util/Locale;I)Lcom/ibm/icu/text/NumberFormat;
.registers 4
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public abstract getSupportedLocaleNames()Ljava/util/Set;
.end method
.method public visible()Z
.registers 2
const/4 v0, 0x1
return v0
.end method