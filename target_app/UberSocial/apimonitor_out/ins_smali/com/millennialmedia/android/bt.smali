.class  Lcom/millennialmedia/android/bt;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:Lcom/millennialmedia/android/HttpMMHeaders;
.field  b:Ljava/lang/String;
.field final synthetic c:Lcom/millennialmedia/android/bs;
.method private constructor <init>(Lcom/millennialmedia/android/bs;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/millennialmedia/android/bs;Lcom/millennialmedia/android/bs$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/millennialmedia/android/bt;-><init>(Lcom/millennialmedia/android/bs;)V
return-void
.end method
.method private a()Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
iput-object v0, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v2, v2, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v2, :cond_14
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
:cond_14
if-eqz v0, :cond_b2
:try_start_16
new-instance v2, Ljava/util/TreeMap;
sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/bp;->a(Ljava/util/Map;)V
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v2}, Lcom/millennialmedia/android/co;->a(Landroid/content/Context;Ljava/util/Map;)V
const-string v3, "ua"
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-virtual {v0}, Lcom/millennialmedia/android/bs;->c()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/millennialmedia/android/as;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
const-string v4, "MMAdImplController"
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_50
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
const-string v4, "%s=%s&"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v7, "UTF-8"
invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
aput-object v0, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_7e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_7e} :catch_7f
goto :goto_50
:catch_7f
move-exception v0
new-instance v1, Lcom/millennialmedia/android/cc;
invoke-direct {v1, v0}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/Exception;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->a(Lcom/millennialmedia/android/cc;)Z
move-result v0
:goto_89
return v0
:try_start_8a
:cond_8a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v2
invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
const-string v0, "MMAdImplController"
const-string v2, "Calling for an advertisement: %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_b0
move v0, v1
goto :goto_89
:cond_b2
new-instance v0, Lcom/millennialmedia/android/cc;
const/16 v2, 0x19
invoke-direct {v0, v2}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
:try_end_bc
.catch Ljava/io/UnsupportedEncodingException; {:try_start_8a .. :try_end_bc} :catch_7f
goto :goto_b0
.end method
.method private a(Lorg/apache/http/HttpEntity;)Z
.registers 8
const/16 v5, 0xf
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_121
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
move-object v1, v0
:goto_14
if-eqz v1, :cond_76
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->q()Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Lcom/millennialmedia/android/cc;
const-string v1, "Millennial ad return unsupported format."
invoke-direct {v0, v1, v5}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bt;->a(Lcom/millennialmedia/android/cc;)Z
move-result v0
:goto_27
return v0
:cond_28
:try_start_28
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/ai;->a(Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
:try_end_36
.catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_36} :catch_78
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_88
if-eqz v0, :cond_76
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->b()Z
move-result v2
if-eqz v2, :cond_76
const-string v2, "MMAdImplController"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Cached video ad JSON received: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->a()Z
move-result v2
if-eqz v2, :cond_aa
const-string v2, "MMAdImplController"
const-string v3, "New ad has expiration date in the past. Not downloading ad content."
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V
new-instance v0, Lcom/millennialmedia/android/cc;
invoke-direct {v0, v5}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v1, v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
:goto_76
:cond_76
const/4 v0, 0x1
goto :goto_27
:catch_78
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
new-instance v1, Lcom/millennialmedia/android/cc;
const-string v2, "Millennial ad return failed. Invalid response data."
invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
move-result v0
goto :goto_27
:catch_88
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
new-instance v1, Lcom/millennialmedia/android/cc;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Millennial ad return failed. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
move-result v0
goto/16 :goto_27
:cond_aa
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/a;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v2
if-eqz v2, :cond_d1
const-string v2, "MMAdImplController"
const-string v3, "Previously fetched ad exists in the playback queue. Not downloading ad content."
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V
new-instance v0, Lcom/millennialmedia/android/cc;
const/16 v2, 0x11
invoke-direct {v0, v2}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v1, v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
goto :goto_76
:cond_d1
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Lcom/millennialmedia/android/ai;)Z
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_103
iget-object v2, v0, Lcom/millennialmedia/android/VideoAd;->r:Ljava/lang/String;
invoke-static {v2}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
const-string v2, "MMAdImplController"
const-string v3, "Downloading ad..."
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1}, Lcom/millennialmedia/android/cp;->b(Lcom/millennialmedia/android/bp;)V
const/4 v2, 0x3
iput v2, v0, Lcom/millennialmedia/android/VideoAd;->i:I
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v3
iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-static {v2, v3, v0, v1}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z
goto/16 :goto_76
:cond_103
const-string v2, "MMAdImplController"
const-string v3, "Cached ad is valid. Moving it to the front of the queue."
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1}, Lcom/millennialmedia/android/cp;->b(Lcom/millennialmedia/android/bp;)V
invoke-static {v1}, Lcom/millennialmedia/android/cp;->f(Lcom/millennialmedia/android/bp;)V
goto/16 :goto_76
:cond_121
move-object v1, v0
goto/16 :goto_14
.end method
.method private a(Lorg/apache/http/HttpResponse;)Z
.registers 10
const/16 v7, 0xf
const/16 v6, 0xe
const/4 v0, 0x0
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
if-nez v1, :cond_16
new-instance v1, Lcom/millennialmedia/android/cc;
const-string v2, "Null HTTP entity"
invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
:goto_15
return v0
:cond_16
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-nez v2, :cond_2b
new-instance v1, Lcom/millennialmedia/android/cc;
const-string v2, "Millennial ad return failed. Zero content length returned."
invoke-direct {v1, v2, v6}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
goto :goto_15
:cond_2b
invoke-direct {p0, p1}, Lcom/millennialmedia/android/bt;->b(Lorg/apache/http/HttpResponse;)V
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_ae
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_ae
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string v4, "application/json"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_4f
invoke-direct {p0, v1}, Lcom/millennialmedia/android/bt;->a(Lorg/apache/http/HttpEntity;)Z
:goto_4d
const/4 v0, 0x1
goto :goto_15
:cond_4f
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_a2
const-string v0, "X-MM-Video"
invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
new-instance v2, Lcom/millennialmedia/android/HttpMMHeaders;
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v3
invoke-direct {v2, v3}, Lcom/millennialmedia/android/HttpMMHeaders;-><init>([Lorg/apache/http/Header;)V
iput-object v2, p0, Lcom/millennialmedia/android/bt;->a:Lcom/millennialmedia/android/HttpMMHeaders;
if-eqz v0, :cond_9e
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
const-string v2, "true"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9e
const/4 v0, 0x0
iget-object v2, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v2, v2, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v2, :cond_8f
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
:cond_8f
if-eqz v0, :cond_9e
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v3
iget-object v0, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v3, v2, v0}, Lcom/millennialmedia/android/as;->c(Landroid/content/Context;Ljava/lang/String;)V
:cond_9e
invoke-direct {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lorg/apache/http/HttpEntity;)Z
goto :goto_4d
:cond_a2
new-instance v1, Lcom/millennialmedia/android/cc;
const-string v2, "Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned."
invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
goto/16 :goto_15
:cond_ae
new-instance v1, Lcom/millennialmedia/android/cc;
const-string v2, "Millennial ad return failed. HTTP Header value null."
invoke-direct {v1, v2, v7}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
goto/16 :goto_15
.end method
.method private b(Lorg/apache/http/HttpResponse;)V
.registers 8
const-string v0, "Set-Cookie"
invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_2b
aget-object v3, v1, v0
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
const-string v4, "MAC-ID="
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v4
if-ltz v4, :cond_28
const/16 v5, 0x3b
invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I
move-result v5
if-le v5, v4, :cond_28
add-int/lit8 v4, v4, 0x7
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
sput-object v3, Lcom/millennialmedia/android/co;->x:Ljava/lang/String;
:cond_28
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_2b
return-void
.end method
.method private b(Lorg/apache/http/HttpEntity;)Z
.registers 10
const/4 v1, 0x1
const/4 v0, 0x0
:try_start_2
iget-object v2, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v2, v2, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v2, :cond_12
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
:cond_12
if-eqz v0, :cond_71
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->q()Z
move-result v2
if-nez v2, :cond_73
new-instance v2, Lcom/millennialmedia/android/InterstitialAd;
invoke-direct {v2}, Lcom/millennialmedia/android/InterstitialAd;-><init>()V
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
invoke-static {v3}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
iget-object v3, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/millennialmedia/android/InterstitialAd;->b(Ljava/lang/String;)V
iget-object v3, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
iget-object v3, p0, Lcom/millennialmedia/android/bt;->a:Lcom/millennialmedia/android/HttpMMHeaders;
iput-object v3, v2, Lcom/millennialmedia/android/InterstitialAd;->n:Lcom/millennialmedia/android/HttpMMHeaders;
sget v3, Lcom/millennialmedia/android/co;->c:I
const/4 v4, 0x5
if-lt v3, v4, :cond_55
const-string v3, "MMAdImplController"
const-string v4, "Received interstitial ad with url %s."
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v7, v2, Lcom/millennialmedia/android/InterstitialAd;->m:Ljava/lang/String;
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "MMAdImplController"
iget-object v4, v2, Lcom/millennialmedia/android/InterstitialAd;->l:Ljava/lang/String;
invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_55
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v2}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Lcom/millennialmedia/android/ai;)Z
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v3
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2}, Lcom/millennialmedia/android/InterstitialAd;->e()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/millennialmedia/android/cp;->b(Lcom/millennialmedia/android/bp;)V
invoke-static {v0}, Lcom/millennialmedia/android/cp;->f(Lcom/millennialmedia/android/bp;)V
:cond_71
:goto_71
move v0, v1
:goto_72
return v0
:cond_73
iget-object v2, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v2, :cond_8d
iget-object v2, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v3, p0, Lcom/millennialmedia/android/bt;->a:Lcom/millennialmedia/android/HttpMMHeaders;
invoke-virtual {v2, v3}, Lcom/millennialmedia/android/bs;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V
iget-object v2, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
invoke-static {v3}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/android/bs;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_8d
invoke-static {v0}, Lcom/millennialmedia/android/cp;->f(Lcom/millennialmedia/android/bp;)V
:try_end_90
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_90} :catch_91
goto :goto_71
:catch_91
move-exception v0
new-instance v1, Lcom/millennialmedia/android/cc;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Exception raised in HTTP stream: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->a(Lcom/millennialmedia/android/cc;)Z
move-result v0
goto :goto_72
.end method
.method  a(Lcom/millennialmedia/android/cc;)Z
.registers 4
const-string v0, "MMAdImplController"
invoke-virtual {p1}, Lcom/millennialmedia/android/cc;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/bt;->c(Lcom/millennialmedia/android/cc;)Z
move-result v0
return v0
.end method
.method  b(Lcom/millennialmedia/android/cc;)Z
.registers 4
const-string v0, "MMAdImplController"
invoke-virtual {p1}, Lcom/millennialmedia/android/cc;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/bt;->c(Lcom/millennialmedia/android/cc;)Z
move-result v0
return v0
.end method
.method  c(Lcom/millennialmedia/android/cc;)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v1, v1, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
:cond_11
invoke-static {v0, p1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
const/4 v0, 0x0
return v0
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_89
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_78
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/co;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_78
invoke-direct {p0}, Lcom/millennialmedia/android/bt;->a()Z
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_a0
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_8e
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
:goto_27
return-void
:cond_28
:try_start_28
new-instance v0, Lcom/millennialmedia/android/aw;
invoke-direct {v0}, Lcom/millennialmedia/android/aw;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/bt;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
move-result-object v0
if-nez v0, :cond_6d
new-instance v0, Lcom/millennialmedia/android/cc;
const-string v1, "HTTP response is null."
const/16 v2, 0xe
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bt;->a(Lcom/millennialmedia/android/cc;)Z
:try_end_41
.catchall {:try_start_28 .. :try_end_41} :catchall_a0
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_41} :catch_46
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:catch_46
move-exception v0
:try_start_47
new-instance v1, Lcom/millennialmedia/android/cc;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ad request HTTP error. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/16 v2, 0xe
invoke-direct {v1, v0, v2}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/bt;->a(Lcom/millennialmedia/android/cc;)Z
:try_end_68
.catchall {:try_start_47 .. :try_end_68} :catchall_a0
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_68} :catch_8e
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:cond_6d
:try_start_6d
invoke-direct {p0, v0}, Lcom/millennialmedia/android/bt;->a(Lorg/apache/http/HttpResponse;)Z
:try_end_70
.catchall {:try_start_6d .. :try_end_70} :catchall_a0
.catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_8e
move-result v0
if-nez v0, :cond_89
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:try_start_78
:cond_78
new-instance v0, Lcom/millennialmedia/android/cc;
const-string v1, "No network available, can\'t call for ads."
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
:try_end_84
.catchall {:try_start_78 .. :try_end_84} :catchall_a0
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_84} :catch_8e
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:cond_89
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:catch_8e
move-exception v0
:try_start_8f
new-instance v0, Lcom/millennialmedia/android/cc;
const-string v1, "Request not filled, can\'t call for ads."
const/16 v2, 0xe
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bt;->b(Lcom/millennialmedia/android/cc;)Z
:try_end_9b
.catchall {:try_start_8f .. :try_end_9b} :catchall_a0
iget-object v0, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
goto :goto_27
:catchall_a0
move-exception v0
iget-object v1, p0, Lcom/millennialmedia/android/bt;->c:Lcom/millennialmedia/android/bs;
iput-object v4, v1, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
throw v0
.end method