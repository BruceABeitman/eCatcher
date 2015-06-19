.class public Lcom/ubermedia/b/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static a:Z
.field private static b:Ljava/lang/String;
.field private static final c:Ljava/lang/String;
.field private static d:Lorg/apache/log4j/aa;
.method static constructor <clinit>()V
.registers 1
sget-boolean v0, Lcom/ubermedia/a;->b:Z
sput-boolean v0, Lcom/ubermedia/b/m;->a:Z
const-string v0, "logfile.txt"
sput-object v0, Lcom/ubermedia/b/m;->b:Ljava/lang/String;
const-string v0, "line.separator"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/ubermedia/b/m;->c:Ljava/lang/String;
const-class v0, Lcom/ubermedia/b/m;
invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
invoke-static {}, Lcom/ubermedia/b/m;->a()V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()V
.registers 3
:try_start_0
new-instance v0, Lb/a/a/a/a/b;
invoke-direct {v0}, Lb/a/a/a/a/b;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/ubermedia/b/m;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lb/a/a/a/a/b;->c(Ljava/lang/String;)V
sget-object v1, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
invoke-virtual {v0, v1}, Lb/a/a/a/a/b;->a(Lorg/apache/log4j/v;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lb/a/a/a/a/b;->b(Z)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lb/a/a/a/a/b;->c(Z)V
invoke-virtual {v0}, Lb/a/a/a/a/b;->a()V
:goto_35
:try_end_35
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
const-string v1, "UCLogger"
const-string v2, "Error configuring log4j"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_35
.end method
.method public static a(Landroid/content/Context;)V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/ubermedia/b/m$1;
invoke-direct {v0}, Lcom/ubermedia/b/m$1;-><init>()V
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Void;
const/4 v2, 0x0
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object v3, v1, v2
const/4 v2, 0x2
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/ubermedia/b/m$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public static a(Ljava/lang/Exception;)V
.registers 1
if-eqz p0, :cond_5
invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
:cond_5
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
new-instance v0, Ljava/io/PrintWriter;
new-instance v1, Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/FileWriter;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Lcom/ubermedia/b/m;->b:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/ubermedia/b/m;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
:goto_50
:try_end_50
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_50} :catch_51
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_50} :catch_56
return-void
:catch_51
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_50
:catch_56
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_50
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
return-void
.end method
.method public static b()V
.registers 6
const-wide/16 v4, 0x400
const-string v0, "MemoryLog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Total mem: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J
move-result-wide v2
div-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "k, used: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J
move-result-wide v2
div-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "k, free: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J
move-result-wide v2
div-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "k"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-boolean v0, Lcom/ubermedia/b/m;->a:Z
if-eqz v0, :cond_12
invoke-static {p0}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
sget-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
invoke-virtual {v0, p1}, Lorg/apache/log4j/aa;->a(Ljava/lang/Object;)V
:cond_12
return-void
.end method
.method public static c(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
sget-boolean v0, Lcom/ubermedia/b/m;->a:Z
if-eqz v0, :cond_12
invoke-static {p0}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
sget-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
invoke-virtual {v0, p1}, Lorg/apache/log4j/aa;->b(Ljava/lang/Object;)V
:cond_12
return-void
.end method
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
sget-boolean v0, Lcom/ubermedia/b/m;->a:Z
if-eqz v0, :cond_f
invoke-static {p0}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
sget-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
invoke-virtual {v0, p1}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;)V
:cond_f
return-void
.end method
.method public static e(Ljava/lang/String;Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static f(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
sget-boolean v0, Lcom/ubermedia/b/m;->a:Z
if-eqz v0, :cond_f
invoke-static {p0}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;
sget-object v0, Lcom/ubermedia/b/m;->d:Lorg/apache/log4j/aa;
invoke-virtual {v0, p1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
:cond_f
return-void
.end method