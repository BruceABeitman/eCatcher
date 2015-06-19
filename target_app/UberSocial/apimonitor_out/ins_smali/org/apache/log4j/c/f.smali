.class public abstract Lorg/apache/log4j/c/f;
.super Lorg/apache/log4j/u;
.source "SourceFile"
.field public static final b:Ljava/lang/String; = "NULL"
.field public static final c:Ljava/lang/String; = "RELATIVE"
.field public static final e:Ljava/lang/String; = "DateFormat"
.field public static final f:Ljava/lang/String; = "TimeZone"
.field private a:Ljava/lang/String;
.field protected d:Ljava/text/FieldPosition;
.field protected g:Ljava/text/DateFormat;
.field protected j:Ljava/util/Date;
.field private k:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lorg/apache/log4j/u;-><init>()V
new-instance v0, Ljava/text/FieldPosition;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/c/f;->d:Ljava/text/FieldPosition;
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/c/f;->j:Ljava/util/Date;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_4
iput-object p1, p0, Lorg/apache/log4j/c/f;->k:Ljava/lang/String;
:cond_4
iget-object v0, p0, Lorg/apache/log4j/c/f;->k:Ljava/lang/String;
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/c/f;->a(Ljava/lang/String;Ljava/util/TimeZone;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "DateFormat"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/c/f;->k:Ljava/lang/String;
:cond_e
:goto_e
return-void
:cond_f
const-string v0, "TimeZone"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
iput-object p2, p0, Lorg/apache/log4j/c/f;->a:Ljava/lang/String;
goto :goto_e
.end method
.method public a(Ljava/lang/String;Ljava/util/TimeZone;)V
.registers 5
const/4 v1, 0x0
if-nez p1, :cond_6
iput-object v1, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
:goto_5
return-void
:cond_6
const-string v0, "NULL"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
iput-object v1, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
goto :goto_5
:cond_11
const-string v0, "RELATIVE"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Lorg/apache/log4j/c/ab;
invoke-direct {v0}, Lorg/apache/log4j/c/ab;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
goto :goto_5
:cond_21
const-string v0, "ABSOLUTE"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_31
new-instance v0, Lorg/apache/log4j/c/a;
invoke-direct {v0, p2}, Lorg/apache/log4j/c/a;-><init>(Ljava/util/TimeZone;)V
iput-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
goto :goto_5
:cond_31
const-string v0, "DATE"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_41
new-instance v0, Lorg/apache/log4j/c/g;
invoke-direct {v0, p2}, Lorg/apache/log4j/c/g;-><init>(Ljava/util/TimeZone;)V
iput-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
goto :goto_5
:cond_41
const-string v0, "ISO8601"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_51
new-instance v0, Lorg/apache/log4j/c/j;
invoke-direct {v0, p2}, Lorg/apache/log4j/c/j;-><init>(Ljava/util/TimeZone;)V
iput-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
goto :goto_5
:cond_51
new-instance v0, Ljava/text/SimpleDateFormat;
invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
goto :goto_5
.end method
.method public a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
if-eqz v0, :cond_19
iget-object v0, p0, Lorg/apache/log4j/c/f;->j:Ljava/util/Date;
iget-wide v1, p2, Lorg/apache/log4j/k/k;->d:J
invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
iget-object v1, p0, Lorg/apache/log4j/c/f;->j:Ljava/util/Date;
iget-object v2, p0, Lorg/apache/log4j/c/f;->d:Ljava/text/FieldPosition;
invoke-virtual {v0, v1, p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
const/16 v0, 0x20
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_19
return-void
.end method
.method public a(Ljava/text/DateFormat;Ljava/util/TimeZone;)V
.registers 4
iput-object p1, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/c/f;->a:Ljava/lang/String;
return-void
.end method
.method public h()[Ljava/lang/String;
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "DateFormat"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "TimeZone"
aput-object v2, v0, v1
return-object v0
.end method
.method public i()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/c/f;->k:Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/apache/log4j/c/f;->a(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/c/f;->a:Ljava/lang/String;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/log4j/c/f;->g:Ljava/text/DateFormat;
iget-object v1, p0, Lorg/apache/log4j/c/f;->a:Ljava/lang/String;
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
:cond_18
return-void
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/c/f;->k:Ljava/lang/String;
return-object v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/c/f;->a:Ljava/lang/String;
return-object v0
.end method