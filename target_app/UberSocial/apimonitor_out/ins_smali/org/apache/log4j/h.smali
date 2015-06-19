.class  Lorg/apache/log4j/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field static c:Ljava/lang/Class;
.field  a:Ljava/lang/String;
.field  b:I
.method constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/h;->a:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v0
iput v0, p0, Lorg/apache/log4j/h;->b:I
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
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
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p1, :cond_26
sget-object v0, Lorg/apache/log4j/h;->c:Ljava/lang/Class;
if-nez v0, :cond_23
const-string v0, "org.apache.log4j.h"
invoke-static {v0}, Lorg/apache/log4j/h;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/h;->c:Ljava/lang/Class;
:goto_12
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_26
iget-object v0, p0, Lorg/apache/log4j/h;->a:Ljava/lang/String;
check-cast p1, Lorg/apache/log4j/h;
iget-object v1, p1, Lorg/apache/log4j/h;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
:cond_23
sget-object v0, Lorg/apache/log4j/h;->c:Ljava/lang/Class;
goto :goto_12
:cond_26
const/4 v0, 0x0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lorg/apache/log4j/h;->b:I
return v0
.end method