.class public Lorg/apache/log4j/i/ak;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"
.field private a:I
.method private constructor <init>([Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
const-string v0, "Throwable"
const-string v1, "throwable"
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/log4j/i/ak;->a:I
if-eqz p1, :cond_1e
array-length v0, p1
if-lez v0, :cond_1e
const-string v0, "none"
aget-object v1, p1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
iput v2, p0, Lorg/apache/log4j/i/ak;->a:I
:goto_1e
:cond_1e
return-void
:cond_1f
const-string v0, "short"
aget-object v1, p1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
const/4 v0, 0x1
iput v0, p0, Lorg/apache/log4j/i/ak;->a:I
goto :goto_1e
:cond_2d
const/4 v0, 0x0
:try_start_2e
aget-object v0, p1, v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lorg/apache/log4j/i/ak;->a:I
:try_end_36
.catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_36} :catch_37
goto :goto_1e
:catch_37
move-exception v0
goto :goto_1e
.end method
.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/ak;
.registers 2
new-instance v0, Lorg/apache/log4j/i/ak;
invoke-direct {v0, p0}, Lorg/apache/log4j/i/ak;-><init>([Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
.registers 8
iget v0, p0, Lorg/apache/log4j/i/ak;->a:I
if-eqz v0, :cond_2e
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_2e
invoke-virtual {v0}, Lorg/apache/log4j/k/t;->b()[Ljava/lang/String;
move-result-object v2
array-length v0, v2
iget v1, p0, Lorg/apache/log4j/i/ak;->a:I
if-gez v1, :cond_27
iget v1, p0, Lorg/apache/log4j/i/ak;->a:I
add-int/2addr v0, v1
:cond_16
:goto_16
const/4 v1, 0x0
:goto_17
if-ge v1, v0, :cond_2e
aget-object v3, v2, v1
invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_27
iget v1, p0, Lorg/apache/log4j/i/ak;->a:I
if-le v0, v1, :cond_16
iget v0, p0, Lorg/apache/log4j/i/ak;->a:I
goto :goto_16
:cond_2e
return-void
.end method
.method public a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method