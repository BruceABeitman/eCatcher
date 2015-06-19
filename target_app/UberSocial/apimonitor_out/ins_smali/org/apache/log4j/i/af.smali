.class public final Lorg/apache/log4j/i/af;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.method private constructor <init>([Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_30
array-length v0, p1
if-lez v0, :cond_30
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Property{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
aget-object v1, p1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
:goto_21
const-string v1, "property"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_33
array-length v0, p1
if-lez v0, :cond_33
aget-object v0, p1, v2
iput-object v0, p0, Lorg/apache/log4j/i/af;->a:Ljava/lang/String;
:goto_2f
return-void
:cond_30
const-string v0, "Properties"
goto :goto_21
:cond_33
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/i/af;->a:Ljava/lang/String;
goto :goto_2f
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/af;
.registers 2
new-instance v0, Lorg/apache/log4j/i/af;
invoke-direct {v0, p0}, Lorg/apache/log4j/i/af;-><init>([Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 7
iget-object v0, p0, Lorg/apache/log4j/i/af;->a:Ljava/lang/String;
if-nez v0, :cond_4d
const-string v0, "{"
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_start_9
sget-object v0, Lorg/apache/log4j/c/m;->a:Lorg/apache/log4j/c/m;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/m;->a(Lorg/apache/log4j/k/k;)Ljava/util/Set;
move-result-object v0
if-eqz v0, :cond_47
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_15
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_47
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
const-string v3, "{"
invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v3, ","
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "}"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_40
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_41
goto :goto_15
:catch_41
move-exception v0
const-string v1, "Unexpected exception while extracting MDC keys"
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_47
const-string v0, "}"
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_4c
:cond_4c
return-void
:cond_4d
iget-object v0, p0, Lorg/apache/log4j/i/af;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/apache/log4j/k/k;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_4c
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto :goto_4c
.end method