.class  Lorg/apache/log4j/i/f;
.super Ljava/text/DateFormat;
.source "SourceFile"
.field private static final a:J = 0x1L
.field private final b:Ljava/text/DateFormat;
.method public constructor <init>(Ljava/text/DateFormat;)V
.registers 2
invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/i/f;->b:Ljava/text/DateFormat;
return-void
.end method
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
iget-object v0, p0, Lorg/apache/log4j/i/f;->b:Ljava/text/DateFormat;
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
iget-object v0, p0, Lorg/apache/log4j/i/f;->b:Ljava/text/DateFormat;
invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.registers 5
iget-object v0, p0, Lorg/apache/log4j/i/f;->b:Ljava/text/DateFormat;
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
iget-object v0, p0, Lorg/apache/log4j/i/f;->b:Ljava/text/DateFormat;
invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method