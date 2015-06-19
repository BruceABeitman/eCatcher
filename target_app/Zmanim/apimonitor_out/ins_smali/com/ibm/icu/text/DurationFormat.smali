.class public abstract Lcom/ibm/icu/text/DurationFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "DurationFormat.java"
.field private static final serialVersionUID:J = -0x1cd2d9e4c38cc84aL
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
return-void
.end method
.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/DurationFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DurationFormat;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/impl/duration/BasicDurationFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DurationFormat;
move-result-object v0
return-object v0
.end method
.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public abstract formatDurationFrom(JJ)Ljava/lang/String;
.end method
.method public abstract formatDurationFromNow(J)Ljava/lang/String;
.end method
.method public abstract formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
.end method
.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method