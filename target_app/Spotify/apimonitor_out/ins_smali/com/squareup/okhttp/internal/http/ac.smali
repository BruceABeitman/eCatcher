.class final Lcom/squareup/okhttp/internal/http/ac;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/util/Date;
.field private b:Ljava/util/Set;
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/e;)V
.registers 9
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ac;->b:Ljava/util/Set;
move v0, v1
:goto_b
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v2
if-ge v0, v2, :cond_5b
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v3
const-string v4, "Last-Modified"
invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_2a
invoke-static {v3}, Lcom/squareup/okhttp/internal/http/o;->a(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
iput-object v2, p0, Lcom/squareup/okhttp/internal/http/ac;->a:Ljava/util/Date;
:cond_27
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_2a
const-string v4, "Vary"
invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ac;->b:Ljava/util/Set;
invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
move-result v2
if-eqz v2, :cond_43
new-instance v2, Ljava/util/TreeSet;
sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v2, p0, Lcom/squareup/okhttp/internal/http/ac;->b:Ljava/util/Set;
:cond_43
const-string v2, ","
invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
move v2, v1
:goto_4b
if-ge v2, v4, :cond_27
aget-object v5, v3, v2
iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ac;->b:Ljava/util/Set;
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_4b
:cond_5b
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/ac;-><init>(Lcom/squareup/okhttp/internal/http/e;)V
return-void
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/ac;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ac;->b:Ljava/util/Set;
return-object v0
.end method