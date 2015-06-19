.class public Lnet/sourceforge/zmanim/util/ZmanimFormatter;
.super Ljava/lang/Object;
.source "ZmanimFormatter.java"
.field public static final DECIMAL_FORMAT:I = 0x1
.field public static final HOUR_MILLIS:J = 0x36ee80L
.field static final MINUTE_MILLIS:J = 0xea60L
.field public static final SEXAGESIMAL_FORMAT:I = 0x2
.field public static final SEXAGESIMAL_MILLIS_FORMAT:I = 0x4
.field public static final SEXAGESIMAL_SECONDS_FORMAT:I = 0x3
.field public static final SEXAGESIMAL_XSD_FORMAT:I = 0x0
.field public static final XSD_DURATION_FORMAT:I = 0x5
.field private static milliNF:Ljava/text/DecimalFormat;
.field private static minuteSecondNF:Ljava/text/DecimalFormat;
.field private dateFormat:Ljava/text/SimpleDateFormat;
.field private hourNF:Ljava/text/DecimalFormat;
.field private prependZeroHours:Z
.field private timeFormat:I
.field  useDecimal:Z
.field private useMillis:Z
.field private useSeconds:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/text/DecimalFormat;
const-string v1, "00"
invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;
new-instance v0, Ljava/text/DecimalFormat;
const-string v1, "000"
invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v0, 0x0
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "h:mm:ss"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;)V
return-void
.end method
.method public constructor <init>(ILjava/text/SimpleDateFormat;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I
const-string v0, "0"
iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->prependZeroHours:Z
if-eqz v1, :cond_e
const-string v0, "00"
:cond_e
new-instance v1, Ljava/text/DecimalFormat;
invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;
invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setTimeFormat(I)V
invoke-virtual {p0, p2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setDateFormat(Ljava/text/SimpleDateFormat;)V
return-void
.end method
.method private static formatDigits(I)Ljava/lang/String;
.registers 4
invoke-static {p0}, Ljava/lang/Math;->abs(I)I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_23
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/16 v2, 0x30
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_22
return-object v1
:cond_23
move-object v1, v0
goto :goto_22
.end method
.method private static includeMethod(Ljava/lang/reflect/Method;)Z
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
move v2, v5
:goto_17
return v2
:cond_18
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_24
move v2, v4
goto :goto_17
:cond_24
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v2
array-length v2, v2
if-lez v2, :cond_2d
move v2, v4
goto :goto_17
:cond_2d
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
const-string v3, "get"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3b
move v2, v4
goto :goto_17
:cond_3b
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string v3, "Date"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_5b
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string v3, "long"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_5d
:cond_5b
move v2, v5
goto :goto_17
:cond_5d
move v2, v4
goto :goto_17
.end method
.method private setSettings(ZZZ)V
.registers 4
iput-boolean p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->prependZeroHours:Z
iput-boolean p2, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useSeconds:Z
iput-boolean p3, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useMillis:Z
return-void
.end method
.method public static toXML(Lnet/sourceforge/zmanim/AstronomicalCalendar;)Ljava/lang/String;
.registers 14
new-instance v3, Lnet/sourceforge/zmanim/util/ZmanimFormatter;
const/4 v0, 0x5
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-direct {v3, v0, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;-><init>(ILjava/text/SimpleDateFormat;)V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v1, "<"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string v4, "AstronomicalCalendar"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_247
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "AstronomicalTimes"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_39
:goto_39
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " date=\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " type=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " algorithm=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/AstronomicalCalculator;->getCalculatorName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " location=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLocationName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " latitude=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLatitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " longitude=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getLongitude()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " elevation=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getElevation()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " timeZoneName=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " timeZoneID=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " timeZoneOffset=\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v1
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v4
invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I
move-result v1
int-to-double v1, v1
const-wide v4, 0x414b774000000000L
div-double/2addr v1, v4
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ">\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v8
const-string v4, ""
const/4 v0, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
move v12, v2
move-object v2, v4
move v4, v12
:goto_1fb
array-length v7, v8
if-ge v4, v7, :cond_2c7
aget-object v7, v8, v4
invoke-static {v7}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->includeMethod(Ljava/lang/reflect/Method;)Z
move-result v7
if-eqz v7, :cond_424
aget-object v2, v8, v4
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
const/4 v7, 0x3
invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
:try_start_211
aget-object v9, v8, v4
const/4 v2, 0x0
check-cast v2, [Ljava/lang/Object;
invoke-virtual {v9, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_26c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "<"
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v9, ">N/A</"
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v9, ">"
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_242
.catch Ljava/lang/Exception; {:try_start_211 .. :try_end_242} :catch_27b
:goto_242
add-int/lit8 v2, v4, 0x1
move v4, v2
move-object v2, v7
goto :goto_1fb
:cond_247
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string v4, "ZmanimCalendar"
invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_39
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "Zmanim"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto/16 :goto_39
:cond_26c
:try_start_26c
instance-of v9, v2, Ljava/util/Date;
if-eqz v9, :cond_280
new-instance v9, Lnet/sourceforge/zmanim/util/Zman;
check-cast v2, Ljava/util/Date;
invoke-direct {v9, v2, v7}, Lnet/sourceforge/zmanim/util/Zman;-><init>(Ljava/util/Date;Ljava/lang/String;)V
invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_27a
.catch Ljava/lang/Exception; {:try_start_26c .. :try_end_27a} :catch_27b
goto :goto_242
:catch_27b
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_242
:cond_280
:try_start_280
instance-of v9, v2, Ljava/lang/Long;
if-eqz v9, :cond_295
new-instance v9, Lnet/sourceforge/zmanim/util/Zman;
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v10
long-to-int v2, v10
int-to-long v10, v2
invoke-direct {v9, v10, v11, v7}, Lnet/sourceforge/zmanim/util/Zman;-><init>(JLjava/lang/String;)V
invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_242
:cond_295
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "<"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ">"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v9, "</"
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v9, ">"
invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_2c5
.catch Ljava/lang/Exception; {:try_start_280 .. :try_end_2c5} :catch_27b
goto/16 :goto_242
:cond_2c7
sget-object v2, Lnet/sourceforge/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;
invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v2, 0x0
move-object v4, v6
:goto_2ce
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v6
if-ge v2, v6, :cond_33c
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lnet/sourceforge/zmanim/util/Zman;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v7, "\t<"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v6}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v7, ">"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v6}, Lnet/sourceforge/zmanim/util/Zman;->getZman()Ljava/util/Date;
move-result-object v7
invoke-virtual {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v8
invoke-virtual {v3, v7, v8}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v7, "</"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v6}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, ">\n"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
add-int/lit8 v2, v2, 0x1
goto :goto_2ce
:cond_33c
sget-object v0, Lnet/sourceforge/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;
invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v0, 0x0
move-object v2, v4
:goto_343
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
if-ge v0, v4, :cond_3ae
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lnet/sourceforge/zmanim/util/Zman;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, "\t<"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, ">"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J
move-result-wide v6
long-to-int v6, v6
invoke-virtual {v3, v6}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v6, "</"
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ">\n"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
add-int/lit8 v0, v0, 0x1
goto :goto_343
:cond_3ae
const/4 v0, 0x0
move-object v1, v2
:goto_3b0
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v2
if-ge v0, v2, :cond_3da
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\t"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_3b0
:cond_3da
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "AstronomicalCalendar"
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3fe
new-instance p0, Ljava/lang/StringBuilder;
invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
const-string v0, "</AstronomicalTimes>"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:goto_3fd
return-object p0
:cond_3fe
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object p0
const-string v0, "ZmanimCalendar"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result p0
if-eqz p0, :cond_422
new-instance p0, Ljava/lang/StringBuilder;
invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
const-string v0, "</Zmanim>"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_3fd
:cond_422
move-object p0, v1
goto :goto_3fd
:cond_424
move-object v7, v2
goto/16 :goto_242
.end method
.method public format(D)Ljava/lang/String;
.registers 4
double-to-int v0, p1
invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public format(I)Ljava/lang/String;
.registers 3
new-instance v0, Lnet/sourceforge/zmanim/util/Time;
invoke-direct {v0, p1}, Lnet/sourceforge/zmanim/util/Time;-><init>(I)V
invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public format(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
.registers 6
iget v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I
const/4 v2, 0x5
if-ne v1, v2, :cond_a
invoke-virtual {p0, p1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
move-result-object v1
:goto_9
return-object v1
:cond_a
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget-object v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->hourNF:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useSeconds:Z
if-eqz v1, :cond_47
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->minuteSecondNF:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_47
iget-boolean v1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useMillis:Z
if-eqz v1, :cond_5e
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v1, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_5e
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_9
.end method
.method public formatDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V
iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;
move-result-object v0
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p0, p1, p2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
move-result-object v0
:goto_17
return-object v0
:cond_18
iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;
invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
goto :goto_17
.end method
.method public formatXSDDurationTime(J)Ljava/lang/String;
.registers 6
new-instance v0, Lnet/sourceforge/zmanim/util/Time;
long-to-double v1, p1
invoke-direct {v0, v1, v2}, Lnet/sourceforge/zmanim/util/Time;-><init>(D)V
invoke-virtual {p0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public formatXSDDurationTime(Lnet/sourceforge/zmanim/util/Time;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "P"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I
move-result v1
if-nez v1, :cond_22
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I
move-result v1
if-nez v1, :cond_22
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I
move-result v1
if-nez v1, :cond_22
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()I
move-result v1
if-eqz v1, :cond_b9
:cond_22
const-string v1, "T"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I
move-result v1
if-eqz v1, :cond_47
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getHours()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "H"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_47
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I
move-result v1
if-eqz v1, :cond_67
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMinutes()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "M"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_67
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I
move-result v1
if-nez v1, :cond_73
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()I
move-result v1
if-eqz v1, :cond_a1
:cond_73
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getSeconds()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->milliNF:Ljava/text/DecimalFormat;
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->getMilliseconds()I
move-result v3
int-to-long v3, v3
invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, "S"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_a1
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_ad
const-string v1, "T0S"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_ad
invoke-virtual {p1}, Lnet/sourceforge/zmanim/util/Time;->isNegative()Z
move-result v1
if-eqz v1, :cond_b9
const/4 v1, 0x0
const-string v2, "-"
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
:cond_b9
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getDateFormat()Ljava/text/SimpleDateFormat;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;
return-object v0
.end method
.method public getXSDateTime(Ljava/util/Date;Ljava/util/Calendar;)Ljava/lang/String;
.registers 13
const v9, 0x36ee80
const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"
new-instance v1, Ljava/text/SimpleDateFormat;
invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuffer;
invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v7
invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/16 v7, 0xf
invoke-virtual {p2, v7}, Ljava/util/Calendar;->get(I)I
move-result v7
const/16 v8, 0x10
invoke-virtual {p2, v8}, Ljava/util/Calendar;->get(I)I
move-result v8
add-int v4, v7, v8
if-nez v4, :cond_2d
const-string v7, "Z"
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_28
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
return-object v7
:cond_2d
div-int v2, v4, v9
rem-int v3, v4, v9
if-gez v2, :cond_5d
const/16 v7, 0x2d
move v5, v7
:goto_36
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v2}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const/16 v8, 0x3a
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v3}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->formatDigits(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_28
:cond_5d
const/16 v7, 0x2b
move v5, v7
goto :goto_36
.end method
.method public setDateFormat(Ljava/text/SimpleDateFormat;)V
.registers 2
iput-object p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->dateFormat:Ljava/text/SimpleDateFormat;
return-void
.end method
.method public setTimeFormat(I)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
iput p1, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->timeFormat:I
packed-switch p1, :pswitch_data_1a
:pswitch_7
iput-boolean v0, p0, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->useDecimal:Z
:goto_9
return-void
:pswitch_a
invoke-direct {p0, v0, v0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V
goto :goto_9
:pswitch_e
invoke-direct {p0, v1, v1, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V
goto :goto_9
:pswitch_12
invoke-direct {p0, v1, v0, v1}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V
goto :goto_9
:pswitch_16
invoke-direct {p0, v1, v0, v0}, Lnet/sourceforge/zmanim/util/ZmanimFormatter;->setSettings(ZZZ)V
goto :goto_9
:pswitch_data_1a
.packed-switch 0x0
:pswitch_a
:pswitch_7
:pswitch_e
:pswitch_12
:pswitch_16
.end packed-switch
.end method