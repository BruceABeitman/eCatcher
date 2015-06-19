.class public Lorg/apache/b/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/b/e;
.field static a:Ljava/lang/Class; = null
.field private static final b:Ljava/lang/String; = "us-ascii"
.field private static final c:Ljava/lang/String; = "rfc822"
.field private static final d:Ljava/lang/String; = "text"
.field private static final e:Ljava/lang/String; = "message"
.field private static final f:Ljava/lang/String; = "message/rfc822"
.field private static final g:Ljava/lang/String; = "plain"
.field private static final h:Ljava/lang/String; = "text"
.field private static final i:Ljava/lang/String; = "text/plain"
.field private static j:Lorg/apache/commons/logging/Log;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/util/Map;
.field private r:Z
.field private s:Z
.field private t:J
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/b/a/b/c;->a:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.b.a.b.c"
invoke-static {v0}, Lorg/apache/b/a/b/c;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/b/c;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/b/a/b/c;->j:Lorg/apache/commons/logging/Log;
return-void
:cond_13
sget-object v0, Lorg/apache/b/a/b/c;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/b/a/b/c;-><init>(Lorg/apache/b/a/b/a;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/b/a/b/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "text"
iput-object v0, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
const-string v0, "plain"
iput-object v0, p0, Lorg/apache/b/a/b/c;->l:Ljava/lang/String;
const-string v0, "text/plain"
iput-object v0, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/b/c;->n:Ljava/lang/String;
const-string v0, "us-ascii"
iput-object v0, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
const-string v0, "7bit"
iput-object v0, p0, Lorg/apache/b/a/b/c;->p:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lorg/apache/b/a/b/c;->t:J
if-eqz p1, :cond_40
const-string v0, "multipart/digest"
invoke-interface {p1}, Lorg/apache/b/a/b/a;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/b/a/g/g;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
const-string v0, "message/rfc822"
iput-object v0, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
const-string v0, "rfc822"
iput-object v0, p0, Lorg/apache/b/a/b/c;->l:Ljava/lang/String;
const-string v0, "message"
iput-object v0, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
:goto_3f
return-void
:cond_40
const-string v0, "text/plain"
iput-object v0, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
const-string v0, "plain"
iput-object v0, p0, Lorg/apache/b/a/b/c;->l:Ljava/lang/String;
const-string v0, "text"
iput-object v0, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
goto :goto_3f
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
.method private b(Ljava/lang/String;)V
.registers 11
const/4 v1, 0x1
const/4 v3, 0x0
const/4 v2, 0x0
iput-boolean v1, p0, Lorg/apache/b/a/b/c;->r:Z
invoke-static {p1}, Lorg/apache/b/a/g/g;->e(Ljava/lang/String;)Ljava/util/Map;
move-result-object v6
const-string v0, ""
invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_e5
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
const/16 v0, 0x2f
invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v4, -0x1
if-eq v0, v4, :cond_df
invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
add-int/lit8 v0, v0, 0x1
invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_da
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_da
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v5, "/"
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
move v8, v1
move-object v1, v4
move v4, v8
:goto_5c
if-nez v4, :cond_d6
move-object v1, v2
move-object v3, v2
move-object v4, v2
:goto_61
const-string v0, "boundary"
invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v4, :cond_83
const-string v5, "multipart/"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_75
if-nez v0, :cond_7d
:cond_75
const-string v5, "multipart/"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_83
:cond_7d
iput-object v4, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
iput-object v1, p0, Lorg/apache/b/a/b/c;->l:Ljava/lang/String;
iput-object v3, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
:cond_83
iget-object v1, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
invoke-static {v1}, Lorg/apache/b/a/g/g;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8d
iput-object v0, p0, Lorg/apache/b/a/b/c;->n:Ljava/lang/String;
:cond_8d
const-string v0, "charset"
invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v2, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
if-eqz v0, :cond_a9
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_a9
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
:cond_a9
iget-object v0, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
if-nez v0, :cond_bb
const-string v0, "text"
iget-object v1, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_bb
const-string v0, "us-ascii"
iput-object v0, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
:cond_bb
iget-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iget-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
const-string v1, ""
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
const-string v1, "boundary"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
const-string v1, "charset"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_d6
move-object v4, v3
move-object v3, v1
move-object v1, v0
goto :goto_61
:cond_da
move-object v1, v4
move v4, v3
move-object v3, v5
goto/16 :goto_5c
:cond_df
move v4, v3
move-object v0, v2
move-object v1, v2
move-object v3, v5
goto/16 :goto_5c
:cond_e5
move-object v1, v2
move-object v3, v2
move-object v4, v0
goto/16 :goto_61
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->n:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "content-transfer-encoding"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
iget-boolean v1, p0, Lorg/apache/b/a/b/c;->s:Z
if-nez v1, :cond_28
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/b/c;->s:Z
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_27
iput-object v0, p0, Lorg/apache/b/a/b/c;->p:Ljava/lang/String;
:goto_27
:cond_27
return-void
:cond_28
const-string v1, "content-length"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5d
iget-wide v1, p0, Lorg/apache/b/a/b/c;->t:J
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-eqz v1, :cond_5d
:try_start_38
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lorg/apache/b/a/b/c;->t:J
:try_end_42
.catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_42} :catch_43
goto :goto_27
:catch_43
move-exception v0
sget-object v0, Lorg/apache/b/a/b/c;->j:Lorg/apache/commons/logging/Log;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Invalid content-length: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
goto :goto_27
:cond_5d
const-string v1, "content-type"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
iget-boolean v0, p0, Lorg/apache/b/a/b/c;->r:Z
if-nez v0, :cond_27
invoke-direct {p0, p2}, Lorg/apache/b/a/b/c;->b(Ljava/lang/String;)V
goto :goto_27
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->k:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->l:Ljava/lang/String;
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->o:Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->p:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->q:Ljava/util/Map;
return-object v0
.end method
.method public h()J
.registers 3
iget-wide v0, p0, Lorg/apache/b/a/b/c;->t:J
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/b/c;->m:Ljava/lang/String;
return-object v0
.end method