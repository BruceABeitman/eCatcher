.class public final Lnet/hockeyapp/android/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private a:Z
.field private b:Lnet/hockeyapp/android/c;
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/c;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lnet/hockeyapp/android/d;->a:Z
iput-object p1, p0, Lnet/hockeyapp/android/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;
iput-boolean p3, p0, Lnet/hockeyapp/android/d;->a:Z
iput-object p2, p0, Lnet/hockeyapp/android/d;->b:Lnet/hockeyapp/android/c;
return-void
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/16 v1, 0xff
if-eqz p0, :cond_f
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_f
const/4 v0, 0x0
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
:cond_f
return-object p0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_36
new-instance v1, Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/FileWriter;
invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
:cond_36
:goto_36
:try_end_36
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
goto :goto_36
.end method
.method public static a(Ljava/lang/Throwable;Lnet/hockeyapp/android/c;)V
.registers 9
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Ljava/io/StringWriter;
invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
new-instance v2, Ljava/io/PrintWriter;
invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
:try_start_12
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ".stacktrace"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "HockeyApp"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Writing unhandled exception to: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v4, Ljava/io/BufferedWriter;
new-instance v5, Ljava/io/FileWriter;
invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Package: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Version: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Android: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Manufacturer: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Model: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v5, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "\n"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Date: "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
if-eqz p1, :cond_158
invoke-virtual {p1}, Lnet/hockeyapp/android/c;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lnet/hockeyapp/android/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ".user"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lnet/hockeyapp/android/d;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {v0}, Lnet/hockeyapp/android/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ".contact"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lnet/hockeyapp/android/d;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lnet/hockeyapp/android/c;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".description"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lnet/hockeyapp/android/d;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_158
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_158} :catch_159
:cond_158
:goto_158
return-void
:catch_159
move-exception v0
const-string v1, "HockeyApp"
const-string v2, "Error saving exception stacktrace!\n"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_158
.end method
.method public final a(Lnet/hockeyapp/android/c;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/d;->b:Lnet/hockeyapp/android/c;
return-void
.end method
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 4
sget-object v0, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
if-nez v0, :cond_a
iget-object v0, p0, Lnet/hockeyapp/android/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lnet/hockeyapp/android/d;->b:Lnet/hockeyapp/android/c;
invoke-static {p2, v0}, Lnet/hockeyapp/android/d;->a(Ljava/lang/Throwable;Lnet/hockeyapp/android/c;)V
iget-boolean v0, p0, Lnet/hockeyapp/android/d;->a:Z
if-nez v0, :cond_19
iget-object v0, p0, Lnet/hockeyapp/android/d;->c:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
goto :goto_9
:cond_19
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
const/16 v0, 0xa
invoke-static {v0}, Ljava/lang/System;->exit(I)V
goto :goto_9
.end method