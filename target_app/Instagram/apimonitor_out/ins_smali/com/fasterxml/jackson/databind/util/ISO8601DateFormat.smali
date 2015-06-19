.class public Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;
.super Ljava/text/DateFormat;
.source "ISO8601DateFormat.java"
.field private static CALENDAR:Ljava/util/Calendar; = null
.field private static NUMBER_FORMAT:Ljava/text/NumberFormat; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/GregorianCalendar;
invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->CALENDAR:Ljava/util/Calendar;
new-instance v0, Ljava/text/DecimalFormat;
invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->NUMBER_FORMAT:Ljava/text/NumberFormat;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->NUMBER_FORMAT:Ljava/text/NumberFormat;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->numberFormat:Ljava/text/NumberFormat;
sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->CALENDAR:Ljava/util/Calendar;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->calendar:Ljava/util/Calendar;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 5
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-object p2
.end method
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method