.class public abstract Lorg/apache/log4j/c/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field static e:[Ljava/lang/String;
.field public a:Lorg/apache/log4j/c/q;
.field  b:I
.field  c:I
.field  d:Z
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, " "
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "  "
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "    "
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "        "
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "                "
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "                                "
aput-object v2, v0, v1
sput-object v0, Lorg/apache/log4j/c/q;->e:[Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/log4j/c/q;->b:I
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/log4j/c/q;->c:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/c/q;->d:Z
return-void
.end method
.method protected constructor <init>(Lorg/apache/log4j/c/i;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/log4j/c/q;->b:I
const v0, 0x7fffffff
iput v0, p0, Lorg/apache/log4j/c/q;->c:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/log4j/c/q;->d:Z
iget v0, p1, Lorg/apache/log4j/c/i;->a:I
iput v0, p0, Lorg/apache/log4j/c/q;->b:I
iget v0, p1, Lorg/apache/log4j/c/i;->b:I
iput v0, p0, Lorg/apache/log4j/c/q;->c:I
iget-boolean v0, p1, Lorg/apache/log4j/c/i;->c:Z
iput-boolean v0, p0, Lorg/apache/log4j/c/q;->d:Z
return-void
.end method
.method protected abstract a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.end method
.method public a(Ljava/lang/StringBuffer;I)V
.registers 5
:goto_0
const/16 v0, 0x20
if-lt p2, v0, :cond_f
sget-object v0, Lorg/apache/log4j/c/q;->e:[Ljava/lang/String;
const/4 v1, 0x5
aget-object v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 p2, p2, -0x20
goto :goto_0
:cond_f
const/4 v0, 0x4
:goto_10
if-ltz v0, :cond_21
const/4 v1, 0x1
shl-int/2addr v1, v0
and-int/2addr v1, p2
if-eqz v1, :cond_1e
sget-object v1, Lorg/apache/log4j/c/q;->e:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1e
add-int/lit8 v0, v0, -0x1
goto :goto_10
:cond_21
return-void
.end method
.method public a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
.registers 6
invoke-virtual {p0, p2}, Lorg/apache/log4j/c/q;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_10
iget v0, p0, Lorg/apache/log4j/c/q;->b:I
if-lez v0, :cond_f
iget v0, p0, Lorg/apache/log4j/c/q;->b:I
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/c/q;->a(Ljava/lang/StringBuffer;I)V
:cond_f
:goto_f
return-void
:cond_10
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
iget v2, p0, Lorg/apache/log4j/c/q;->c:I
if-le v1, v2, :cond_23
iget v2, p0, Lorg/apache/log4j/c/q;->c:I
sub-int/2addr v1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_f
:cond_23
iget v2, p0, Lorg/apache/log4j/c/q;->b:I
if-ge v1, v2, :cond_40
iget-boolean v2, p0, Lorg/apache/log4j/c/q;->d:Z
if-eqz v2, :cond_35
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v0, p0, Lorg/apache/log4j/c/q;->b:I
sub-int/2addr v0, v1
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/c/q;->a(Ljava/lang/StringBuffer;I)V
goto :goto_f
:cond_35
iget v2, p0, Lorg/apache/log4j/c/q;->b:I
sub-int v1, v2, v1
invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/c/q;->a(Ljava/lang/StringBuffer;I)V
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_f
:cond_40
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_f
.end method