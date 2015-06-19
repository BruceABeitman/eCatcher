.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
.registers 23
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
move-object/from16 v0, p0
iget-object v5, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;
const-wide/16 v11, 0x0
const-wide/16 v14, 0x0
const-wide/16 v16, 0x0
const-wide/16 v7, 0x0
const/4 v3, 0x0
const/4 v13, 0x0
const-string/jumbo v20, "Date"
move-object/from16 v0, v20
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-eqz v4, :cond_23
invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J
move-result-wide v11
:cond_23
const-string/jumbo v20, "Cache-Control"
move-object/from16 v0, v20
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-eqz v4, :cond_44
const/4 v3, 0x1
const-string/jumbo v20, ","
move-object/from16 v0, v20
invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v19
const/4 v6, 0x0
:goto_3b
move-object/from16 v0, v19
array-length v0, v0
move/from16 v20, v0
move/from16 v0, v20
if-lt v6, v0, :cond_8a
:cond_44
const-string/jumbo v20, "Expires"
move-object/from16 v0, v20
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-eqz v4, :cond_55
invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J
move-result-wide v14
:cond_55
const-string/jumbo v20, "ETag"
move-object/from16 v0, v20
invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
if-eqz v3, :cond_e8
const-wide/16 v20, 0x3e8
mul-long v20, v20, v7
add-long v16, v9, v20
:cond_68
:goto_68
new-instance v2, Lcom/android/volley/Cache$Entry;
invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B
move-object/from16 v20, v0
move-object/from16 v0, v20
iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B
iput-object v13, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;
move-wide/from16 v0, v16
iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J
iget-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J
move-wide/from16 v20, v0
move-wide/from16 v0, v20
iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->ttl:J
iput-wide v11, v2, Lcom/android/volley/Cache$Entry;->serverDate:J
iput-object v5, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;
:goto_89
return-object v2
:cond_8a
aget-object v20, v19, v6
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v18
const-string/jumbo v20, "no-cache"
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_aa
const-string/jumbo v20, "no-store"
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_ac
:cond_aa
const/4 v2, 0x0
goto :goto_89
:cond_ac
const-string/jumbo v20, "max-age="
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v20
if-eqz v20, :cond_cb
const/16 v20, 0x8
:try_start_bb
move-object/from16 v0, v18
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v20
invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_c6
.catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c6} :catch_f8
move-result-wide v7
:goto_c7
:cond_c7
add-int/lit8 v6, v6, 0x1
goto/16 :goto_3b
:cond_cb
const-string/jumbo v20, "must-revalidate"
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_e5
const-string/jumbo v20, "proxy-revalidate"
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_c7
:cond_e5
const-wide/16 v7, 0x0
goto :goto_c7
:cond_e8
const-wide/16 v20, 0x0
cmp-long v20, v11, v20
if-lez v20, :cond_68
cmp-long v20, v14, v11
if-ltz v20, :cond_68
sub-long v20, v14, v11
add-long v16, v9, v20
goto/16 :goto_68
:catch_f8
move-exception v20
goto :goto_c7
.end method
.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
.registers 7
const-string/jumbo v4, "Content-Type"
invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_16
const-string/jumbo v4, ";"
invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
const/4 v1, 0x1
:goto_13
array-length v4, v3
if-lt v1, v4, :cond_1a
:cond_16
const-string/jumbo v4, "ISO-8859-1"
:goto_19
return-object v4
:cond_1a
aget-object v4, v3, v1
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "="
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v4, v2
const/4 v5, 0x2
if-ne v4, v5, :cond_3b
const/4 v4, 0x0
aget-object v4, v2, v4
const-string/jumbo v5, "charset"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3b
const/4 v4, 0x1
aget-object v4, v2, v4
goto :goto_19
:cond_3b
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method public static parseDateAsEpoch(Ljava/lang/String;)J
.registers 4
:try_start_0
invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
:try_end_7
.catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_7} :catch_9
move-result-wide v1
:goto_8
return-wide v1
:catch_9
move-exception v0
const-wide/16 v1, 0x0
goto :goto_8
.end method