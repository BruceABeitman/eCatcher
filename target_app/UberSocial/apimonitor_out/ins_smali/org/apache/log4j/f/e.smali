.class public Lorg/apache/log4j/f/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field public static final a:Lorg/apache/log4j/f/e;
.field public static final b:Lorg/apache/log4j/f/e;
.field public static final c:Lorg/apache/log4j/f/e;
.field public static final d:Lorg/apache/log4j/f/e;
.field public static final e:Lorg/apache/log4j/f/e;
.field public static final f:Lorg/apache/log4j/f/e;
.field public static final g:Lorg/apache/log4j/f/e;
.field public static final h:Lorg/apache/log4j/f/e;
.field public static final i:Lorg/apache/log4j/f/e;
.field public static final j:Lorg/apache/log4j/f/e;
.field public static final k:Lorg/apache/log4j/f/e;
.field private static n:[Lorg/apache/log4j/f/e;
.field private static o:[Lorg/apache/log4j/f/e;
.field private static p:[Lorg/apache/log4j/f/e;
.field private static q:Ljava/util/Map;
.field private static r:Ljava/util/Map;
.field private static s:Ljava/util/Map;
.field protected l:Ljava/lang/String;
.field protected m:I
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x3
const/4 v6, 0x4
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v1, 0x0
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "FATAL"
invoke-direct {v0, v2, v1}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->a:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "ERROR"
invoke-direct {v0, v2, v4}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->b:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "WARN"
invoke-direct {v0, v2, v5}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->c:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "INFO"
invoke-direct {v0, v2, v7}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->d:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "DEBUG"
invoke-direct {v0, v2, v6}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "SEVERE"
invoke-direct {v0, v2, v4}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->f:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "WARNING"
invoke-direct {v0, v2, v5}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->g:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "CONFIG"
invoke-direct {v0, v2, v6}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->h:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "FINE"
const/4 v3, 0x5
invoke-direct {v0, v2, v3}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->i:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "FINER"
const/4 v3, 0x6
invoke-direct {v0, v2, v3}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->j:Lorg/apache/log4j/f/e;
new-instance v0, Lorg/apache/log4j/f/e;
const-string v2, "FINEST"
const/4 v3, 0x7
invoke-direct {v0, v2, v3}, Lorg/apache/log4j/f/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/f/e;->k:Lorg/apache/log4j/f/e;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lorg/apache/log4j/f/e;->s:Ljava/util/Map;
const/4 v0, 0x5
new-array v0, v0, [Lorg/apache/log4j/f/e;
sget-object v2, Lorg/apache/log4j/f/e;->a:Lorg/apache/log4j/f/e;
aput-object v2, v0, v1
sget-object v2, Lorg/apache/log4j/f/e;->b:Lorg/apache/log4j/f/e;
aput-object v2, v0, v4
sget-object v2, Lorg/apache/log4j/f/e;->c:Lorg/apache/log4j/f/e;
aput-object v2, v0, v5
sget-object v2, Lorg/apache/log4j/f/e;->d:Lorg/apache/log4j/f/e;
aput-object v2, v0, v7
sget-object v2, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;
aput-object v2, v0, v6
sput-object v0, Lorg/apache/log4j/f/e;->n:[Lorg/apache/log4j/f/e;
const/4 v0, 0x7
new-array v0, v0, [Lorg/apache/log4j/f/e;
sget-object v2, Lorg/apache/log4j/f/e;->f:Lorg/apache/log4j/f/e;
aput-object v2, v0, v1
sget-object v2, Lorg/apache/log4j/f/e;->g:Lorg/apache/log4j/f/e;
aput-object v2, v0, v4
sget-object v2, Lorg/apache/log4j/f/e;->d:Lorg/apache/log4j/f/e;
aput-object v2, v0, v5
sget-object v2, Lorg/apache/log4j/f/e;->h:Lorg/apache/log4j/f/e;
aput-object v2, v0, v7
sget-object v2, Lorg/apache/log4j/f/e;->i:Lorg/apache/log4j/f/e;
aput-object v2, v0, v6
const/4 v2, 0x5
sget-object v3, Lorg/apache/log4j/f/e;->j:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/4 v2, 0x6
sget-object v3, Lorg/apache/log4j/f/e;->k:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
sput-object v0, Lorg/apache/log4j/f/e;->o:[Lorg/apache/log4j/f/e;
const/16 v0, 0xb
new-array v0, v0, [Lorg/apache/log4j/f/e;
sget-object v2, Lorg/apache/log4j/f/e;->a:Lorg/apache/log4j/f/e;
aput-object v2, v0, v1
sget-object v2, Lorg/apache/log4j/f/e;->b:Lorg/apache/log4j/f/e;
aput-object v2, v0, v4
sget-object v2, Lorg/apache/log4j/f/e;->c:Lorg/apache/log4j/f/e;
aput-object v2, v0, v5
sget-object v2, Lorg/apache/log4j/f/e;->d:Lorg/apache/log4j/f/e;
aput-object v2, v0, v7
sget-object v2, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;
aput-object v2, v0, v6
const/4 v2, 0x5
sget-object v3, Lorg/apache/log4j/f/e;->f:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/4 v2, 0x6
sget-object v3, Lorg/apache/log4j/f/e;->g:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/4 v2, 0x7
sget-object v3, Lorg/apache/log4j/f/e;->h:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/16 v2, 0x8
sget-object v3, Lorg/apache/log4j/f/e;->i:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/16 v2, 0x9
sget-object v3, Lorg/apache/log4j/f/e;->j:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
const/16 v2, 0xa
sget-object v3, Lorg/apache/log4j/f/e;->k:Lorg/apache/log4j/f/e;
aput-object v3, v0, v2
sput-object v0, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lorg/apache/log4j/f/e;->q:Ljava/util/Map;
move v0, v1
:goto_f1
sget-object v2, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
array-length v2, v2
if-ge v0, v2, :cond_10a
sget-object v2, Lorg/apache/log4j/f/e;->q:Ljava/util/Map;
sget-object v3, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
aget-object v3, v3, v0
invoke-virtual {v3}, Lorg/apache/log4j/f/e;->a()Ljava/lang/String;
move-result-object v3
sget-object v4, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
aget-object v4, v4, v0
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_f1
:cond_10a
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
:goto_111
sget-object v0, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
array-length v0, v0
if-ge v1, v0, :cond_124
sget-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
sget-object v2, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
aget-object v2, v2, v1
sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_111
:cond_124
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/log4j/f/e;->l:Ljava/lang/String;
iput p2, p0, Lorg/apache/log4j/f/e;->m:I
return-void
.end method
.method public static a(Ljava/lang/String;)Lorg/apache/log4j/f/e;
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_13
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object p0
sget-object v0, Lorg/apache/log4j/f/e;->q:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/e;
:cond_13
if-nez v0, :cond_25
sget-object v1, Lorg/apache/log4j/f/e;->s:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
if-lez v1, :cond_25
sget-object v0, Lorg/apache/log4j/f/e;->s:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/e;
:cond_25
if-nez v0, :cond_57
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Error while trying to parse ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ") into"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " a LogLevel."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Lorg/apache/log4j/f/f;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/apache/log4j/f/f;-><init>(Ljava/lang/String;)V
throw v1
:cond_57
return-object v0
.end method
.method public static a(Ljava/util/List;)V
.registers 3
if-eqz p0, :cond_16
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/e;
invoke-static {v0}, Lorg/apache/log4j/f/e;->b(Lorg/apache/log4j/f/e;)Lorg/apache/log4j/f/e;
goto :goto_6
:cond_16
return-void
.end method
.method public static a([Lorg/apache/log4j/f/e;)V
.registers 3
if-eqz p0, :cond_e
const/4 v0, 0x0
:goto_3
array-length v1, p0
if-ge v0, v1, :cond_e
aget-object v1, p0, v0
invoke-static {v1}, Lorg/apache/log4j/f/e;->b(Lorg/apache/log4j/f/e;)Lorg/apache/log4j/f/e;
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_e
return-void
.end method
.method public static b(Lorg/apache/log4j/f/e;)Lorg/apache/log4j/f/e;
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
sget-object v1, Lorg/apache/log4j/f/e;->q:Ljava/util/Map;
invoke-virtual {p0}, Lorg/apache/log4j/f/e;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_3
sget-object v0, Lorg/apache/log4j/f/e;->s:Ljava/util/Map;
invoke-virtual {p0}, Lorg/apache/log4j/f/e;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/e;
goto :goto_3
.end method
.method public static b()V
.registers 4
sget-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
const/4 v0, 0x0
:goto_6
sget-object v1, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
array-length v1, v1
if-ge v0, v1, :cond_19
sget-object v1, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
sget-object v2, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
aget-object v2, v2, v0
sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_19
return-void
.end method
.method public static c()Ljava/util/List;
.registers 1
sget-object v0, Lorg/apache/log4j/f/e;->n:[Lorg/apache/log4j/f/e;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static d()Ljava/util/List;
.registers 1
sget-object v0, Lorg/apache/log4j/f/e;->o:[Lorg/apache/log4j/f/e;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static e()Ljava/util/List;
.registers 1
sget-object v0, Lorg/apache/log4j/f/e;->p:[Lorg/apache/log4j/f/e;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static f()Ljava/util/Map;
.registers 1
sget-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/e;->l:Ljava/lang/String;
return-object v0
.end method
.method public a(Lorg/apache/log4j/f/e;Ljava/awt/Color;)V
.registers 4
sget-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
if-nez p2, :cond_9
sget-object p2, Ljava/awt/Color;->black:Ljava/awt/Color;
:cond_9
sget-object v0, Lorg/apache/log4j/f/e;->r:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Lorg/apache/log4j/f/e;)Z
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/f/e;->g()I
move-result v0
invoke-virtual {p0}, Lorg/apache/log4j/f/e;->g()I
move-result v1
if-gt v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lorg/apache/log4j/f/e;
if-eqz v1, :cond_12
invoke-virtual {p0}, Lorg/apache/log4j/f/e;->g()I
move-result v1
check-cast p1, Lorg/apache/log4j/f/e;
invoke-virtual {p1}, Lorg/apache/log4j/f/e;->g()I
move-result v2
if-ne v1, v2, :cond_12
const/4 v0, 0x1
:cond_12
return v0
.end method
.method protected g()I
.registers 2
iget v0, p0, Lorg/apache/log4j/f/e;->m:I
return v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/e;->l:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/e;->l:Ljava/lang/String;
return-object v0
.end method