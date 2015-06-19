.class public Lorg/apache/log4j/k/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field static final a:J = -0x41e7011f7e8df0afL
.field private transient b:Ljava/lang/Throwable;
.field private transient c:Lorg/apache/log4j/g;
.field private d:[Ljava/lang/String;
.method public constructor <init>(Ljava/lang/Throwable;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/k/t;->b:Ljava/lang/Throwable;
return-void
.end method
.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/log4j/g;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/k/t;->b:Ljava/lang/Throwable;
iput-object p2, p0, Lorg/apache/log4j/k/t;->c:Lorg/apache/log4j/g;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_f
invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lorg/apache/log4j/k/t;->d:[Ljava/lang/String;
:cond_f
return-void
.end method
.method public a()Ljava/lang/Throwable;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/k/t;->b:Ljava/lang/Throwable;
return-object v0
.end method
.method public declared-synchronized b()[Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/k/t;->d:[Ljava/lang/String;
if-nez v0, :cond_24
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/log4j/k/t;->c:Lorg/apache/log4j/g;
if-eqz v0, :cond_3c
iget-object v0, p0, Lorg/apache/log4j/k/t;->c:Lorg/apache/log4j/g;
invoke-virtual {v0}, Lorg/apache/log4j/g;->i()Lorg/apache/log4j/k/j;
move-result-object v0
instance-of v2, v0, Lorg/apache/log4j/k/v;
if-eqz v2, :cond_3c
check-cast v0, Lorg/apache/log4j/k/v;
invoke-interface {v0}, Lorg/apache/log4j/k/v;->h()Lorg/apache/log4j/k/u;
move-result-object v0
:goto_1a
if-nez v0, :cond_30
iget-object v0, p0, Lorg/apache/log4j/k/t;->b:Ljava/lang/Throwable;
invoke-static {v0}, Lorg/apache/log4j/n;->b(Ljava/lang/Throwable;)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/k/t;->d:[Ljava/lang/String;
:goto_24
:cond_24
iget-object v0, p0, Lorg/apache/log4j/k/t;->d:[Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
:try_end_2e
.catchall {:try_start_1 .. :try_end_2e} :catchall_39
monitor-exit p0
return-object v0
:cond_30
:try_start_30
iget-object v1, p0, Lorg/apache/log4j/k/t;->b:Ljava/lang/Throwable;
invoke-interface {v0, v1}, Lorg/apache/log4j/k/u;->a(Ljava/lang/Throwable;)[Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/k/t;->d:[Ljava/lang/String;
:try_end_38
.catchall {:try_start_30 .. :try_end_38} :catchall_39
goto :goto_24
:catchall_39
move-exception v0
monitor-exit p0
throw v0
:cond_3c
move-object v0, v1
goto :goto_1a
.end method