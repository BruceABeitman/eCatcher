.class public Lorg/apache/log4j/c/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "log4j.debug"
.field public static final b:Ljava/lang/String; = "log4j.configDebug"
.field protected static c:Z = false
.field private static d:Z = false
.field private static final e:Ljava/lang/String; = "log4j: "
.field private static final f:Ljava/lang/String; = "log4j:ERROR "
.field private static final g:Ljava/lang/String; = "log4j:WARN "
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lorg/apache/log4j/c/l;->c:Z
sput-boolean v0, Lorg/apache/log4j/c/l;->d:Z
const-string v0, "log4j.debug"
invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_14
const-string v0, "log4j.configDebug"
invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_14
if-eqz v0, :cond_1d
const/4 v1, 0x1
invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z
move-result v0
sput-boolean v0, Lorg/apache/log4j/c/l;->c:Z
:cond_1d
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 4
sget-boolean v0, Lorg/apache/log4j/c/l;->c:Z
if-eqz v0, :cond_20
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-nez v0, :cond_20
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_20
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
sget-boolean v0, Lorg/apache/log4j/c/l;->c:Z
if-eqz v0, :cond_27
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-nez v0, :cond_27
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
if-eqz p1, :cond_27
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
:cond_27
return-void
.end method
.method public static a(Z)V
.registers 1
sput-boolean p0, Lorg/apache/log4j/c/l;->c:Z
return-void
.end method
.method public static b(Ljava/lang/String;)V
.registers 4
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j:ERROR "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_4
.end method
.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j:ERROR "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
if-eqz p1, :cond_4
invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_4
.end method
.method public static b(Z)V
.registers 1
sput-boolean p0, Lorg/apache/log4j/c/l;->d:Z
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 4
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j:WARN "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_4
.end method
.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
sget-boolean v0, Lorg/apache/log4j/c/l;->d:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "log4j:WARN "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
if-eqz p1, :cond_4
invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_4
.end method