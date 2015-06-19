.class public Lorg/apache/log4j/aa;
.super Lorg/apache/log4j/g;
.source "SourceFile"
.field static i:Ljava/lang/Class;
.field private static final j:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/aa;->i:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.aa"
invoke-static {v0}, Lorg/apache/log4j/aa;->h(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/aa;->i:Ljava/lang/Class;
:goto_c
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/apache/log4j/aa;->j:Ljava/lang/String;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/aa;->i:Ljava/lang/Class;
goto :goto_c
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lorg/apache/log4j/g;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
.registers 3
invoke-static {p0, p1}, Lorg/apache/log4j/x;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
.registers 2
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/x;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static g(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 2
invoke-static {p0}, Lorg/apache/log4j/x;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method static h(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public static t()Lorg/apache/log4j/aa;
.registers 1
invoke-static {}, Lorg/apache/log4j/x;->b()Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public f(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lorg/apache/log4j/aa;->e:Lorg/apache/log4j/k/j;
const/16 v1, 0x1388
invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
sget-object v0, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
invoke-virtual {p0}, Lorg/apache/log4j/aa;->d()Lorg/apache/log4j/v;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_a
sget-object v0, Lorg/apache/log4j/aa;->j:Ljava/lang/String;
sget-object v1, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, p1, v2}, Lorg/apache/log4j/aa;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_a
.end method
.method public f(Ljava/lang/Object;Ljava/lang/Throwable;)V
.registers 5
iget-object v0, p0, Lorg/apache/log4j/aa;->e:Lorg/apache/log4j/k/j;
const/16 v1, 0x1388
invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
sget-object v0, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
invoke-virtual {p0}, Lorg/apache/log4j/aa;->d()Lorg/apache/log4j/v;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z
move-result v0
if-eqz v0, :cond_a
sget-object v0, Lorg/apache/log4j/aa;->j:Ljava/lang/String;
sget-object v1, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/log4j/aa;->a(Ljava/lang/String;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_a
.end method
.method public u()Z
.registers 3
iget-object v0, p0, Lorg/apache/log4j/aa;->e:Lorg/apache/log4j/k/j;
const/16 v1, 0x1388
invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->a(I)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
sget-object v0, Lorg/apache/log4j/v;->h:Lorg/apache/log4j/v;
invoke-virtual {p0}, Lorg/apache/log4j/aa;->d()Lorg/apache/log4j/v;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/log4j/v;->a(Lorg/apache/log4j/ag;)Z
move-result v0
goto :goto_b
.end method