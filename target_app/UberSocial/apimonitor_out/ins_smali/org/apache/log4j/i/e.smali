.class public final Lorg/apache/log4j/i/e;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "ABSOLUTE"
.field private static final b:Ljava/lang/String; = "HH:mm:ss,SSS"
.field private static final c:Ljava/lang/String; = "DATE"
.field private static final d:Ljava/lang/String; = "dd MMM yyyy HH:mm:ss,SSS"
.field private static final e:Ljava/lang/String; = "ISO8601"
.field private static final f:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss,SSS"
.field private final g:Lorg/apache/log4j/i/c;
.method private constructor <init>([Ljava/lang/String;)V
.registers 9
const/4 v5, 0x1
const-string v0, "Date"
const-string v1, "date"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_d
array-length v0, p1
if-nez v0, :cond_3e
:cond_d
const/4 v1, 0x0
:goto_e
if-eqz v1, :cond_18
const-string v0, "ISO8601"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
:cond_18
const-string v0, "yyyy-MM-dd HH:mm:ss,SSS"
:goto_1a
const/16 v3, 0x3e8
:try_start_1c
new-instance v2, Ljava/text/SimpleDateFormat;
invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lorg/apache/log4j/i/c;->a(Ljava/lang/String;)I
:try_end_24
.catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_5a
move-result v0
move-object v6, v2
move v2, v0
move-object v0, v6
:goto_28
if-eqz p1, :cond_7a
array-length v1, p1
if-le v1, v5, :cond_7a
aget-object v1, p1, v5
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
:goto_36
new-instance v1, Lorg/apache/log4j/i/c;
invoke-direct {v1, v0, v2}, Lorg/apache/log4j/i/c;-><init>(Ljava/text/DateFormat;I)V
iput-object v1, p0, Lorg/apache/log4j/i/e;->g:Lorg/apache/log4j/i/c;
return-void
:cond_3e
const/4 v0, 0x0
aget-object v1, p1, v0
goto :goto_e
:cond_42
const-string v0, "ABSOLUTE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
const-string v0, "HH:mm:ss,SSS"
goto :goto_1a
:cond_4d
const-string v0, "DATE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "dd MMM yyyy HH:mm:ss,SSS"
goto :goto_1a
:cond_58
move-object v0, v1
goto :goto_1a
:catch_5a
move-exception v0
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "Could not instantiate SimpleDateFormat with pattern "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd HH:mm:ss,SSS"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
move v2, v3
goto :goto_28
:cond_7a
new-instance v1, Lorg/apache/log4j/i/f;
invoke-direct {v1, v0}, Lorg/apache/log4j/i/f;-><init>(Ljava/text/DateFormat;)V
move-object v0, v1
goto :goto_36
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/e;
.registers 2
new-instance v0, Lorg/apache/log4j/i/e;
invoke-direct {v0, p0}, Lorg/apache/log4j/i/e;-><init>([Ljava/lang/String;)V
return-object v0
.end method
.method public a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
.registers 4
instance-of v0, p1, Ljava/util/Date;
if-eqz v0, :cond_a
move-object v0, p1
check-cast v0, Ljava/util/Date;
invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/i/e;->a(Ljava/util/Date;Ljava/lang/StringBuffer;)V
:cond_a
invoke-super {p0, p1, p2}, Lorg/apache/log4j/i/r;->a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
return-void
.end method
.method public a(Ljava/util/Date;Ljava/lang/StringBuffer;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/i/e;->g:Lorg/apache/log4j/i/c;
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-virtual {v0, v1, v2, p2}, Lorg/apache/log4j/i/c;->a(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_c
throw v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/i/e;->g:Lorg/apache/log4j/i/c;
iget-wide v1, p1, Lorg/apache/log4j/k/k;->d:J
invoke-virtual {v0, v1, v2, p2}, Lorg/apache/log4j/i/c;->a(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
monitor-exit p0
return-void
:catchall_a
move-exception v0
monitor-exit p0
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_a
throw v0
.end method