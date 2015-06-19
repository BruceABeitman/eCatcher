.class  Lorg/apache/log4j/a/t;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "log4j:event"
.field private static final b:Ljava/lang/String; = "log4j:message"
.field private static final c:Ljava/lang/String; = "log4j:NDC"
.field private static final d:Ljava/lang/String; = "log4j:throwable"
.field private static final e:Ljava/lang/String; = "log4j:locationInfo"
.field private final f:Lorg/apache/log4j/a/q;
.field private g:I
.field private h:J
.field private i:Lorg/apache/log4j/v;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:[Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private final p:Ljava/lang/StringBuffer;
.method constructor <init>(Lorg/apache/log4j/a/q;)V
.registers 3
invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
iput-object p1, p0, Lorg/apache/log4j/a/t;->f:Lorg/apache/log4j/a/q;
return-void
.end method
.method private b()V
.registers 12
iget-object v10, p0, Lorg/apache/log4j/a/t;->f:Lorg/apache/log4j/a/q;
new-instance v0, Lorg/apache/log4j/a/j;
iget-wide v1, p0, Lorg/apache/log4j/a/t;->h:J
iget-object v3, p0, Lorg/apache/log4j/a/t;->i:Lorg/apache/log4j/v;
iget-object v4, p0, Lorg/apache/log4j/a/t;->j:Ljava/lang/String;
iget-object v5, p0, Lorg/apache/log4j/a/t;->k:Ljava/lang/String;
iget-object v6, p0, Lorg/apache/log4j/a/t;->l:Ljava/lang/String;
iget-object v7, p0, Lorg/apache/log4j/a/t;->m:Ljava/lang/String;
iget-object v8, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
iget-object v9, p0, Lorg/apache/log4j/a/t;->o:Ljava/lang/String;
invoke-direct/range {v0 .. v9}, Lorg/apache/log4j/a/j;-><init>(JLorg/apache/log4j/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v10, v0}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/a/j;)V
iget v0, p0, Lorg/apache/log4j/a/t;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/log4j/a/t;->g:I
return-void
.end method
.method private c()V
.registers 4
const/4 v2, 0x0
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/apache/log4j/a/t;->h:J
iput-object v2, p0, Lorg/apache/log4j/a/t;->i:Lorg/apache/log4j/v;
iput-object v2, p0, Lorg/apache/log4j/a/t;->j:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/log4j/a/t;->k:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/log4j/a/t;->l:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/log4j/a/t;->m:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
iput-object v2, p0, Lorg/apache/log4j/a/t;->o:Ljava/lang/String;
return-void
.end method
.method  a()I
.registers 2
iget v0, p0, Lorg/apache/log4j/a/t;->g:I
return v0
.end method
.method public characters([CII)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-void
.end method
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const-string v0, "log4j:event"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
invoke-direct {p0}, Lorg/apache/log4j/a/t;->b()V
invoke-direct {p0}, Lorg/apache/log4j/a/t;->c()V
:cond_e
:goto_e
return-void
:cond_f
const-string v0, "log4j:NDC"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->k:Ljava/lang/String;
goto :goto_e
:cond_20
const-string v0, "log4j:message"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->m:Ljava/lang/String;
goto :goto_e
:cond_31
const-string v0, "log4j:throwable"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v1, Ljava/util/StringTokenizer;
iget-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "\n\t"
invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
iput-object v0, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
iget-object v0, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
array-length v0, v0
if-lez v0, :cond_e
iget-object v0, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
const/4 v0, 0x1
:goto_5d
iget-object v2, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_e
iget-object v2, p0, Lorg/apache/log4j/a/t;->n:[Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "\t"
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_5d
.end method
.method public startDocument()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lorg/apache/log4j/a/t;->g:I
return-void
.end method
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.registers 7
iget-object v0, p0, Lorg/apache/log4j/a/t;->p:Ljava/lang/StringBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
const-string v0, "log4j:event"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "thread"
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->l:Ljava/lang/String;
const-string v0, "timestamp"
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lorg/apache/log4j/a/t;->h:J
const-string v0, "logger"
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->j:Ljava/lang/String;
const-string v0, "level"
invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/v;->a(Ljava/lang/String;)Lorg/apache/log4j/v;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->i:Lorg/apache/log4j/v;
:cond_36
:goto_36
return-void
:cond_37
const-string v0, "log4j:locationInfo"
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "class"
invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "method"
invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "file"
invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "line"
invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/t;->o:Ljava/lang/String;
goto :goto_36
.end method