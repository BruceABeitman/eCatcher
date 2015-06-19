.class public Lcom/twitter/android/sdk/TwitterAuthHelper;
.super Ljava/lang/Object;
.source "TwitterAuthHelper.java"
.field private static final FORM_URLENCODED_HEADER:Ljava/lang/String; = "application/x-www-form-urlencoded"
.field private static final OAUTH_SIGNATURE_METHOD:Ljava/lang/String; = "HMAC-SHA1"
.field private static final OAUTH_VERSION:Ljava/lang/String; = "1.0"
.field private static final RAND:Ljava/security/SecureRandom; = null
.field private static final REALM:Ljava/lang/String; = "https://api.twitter.com/"
.field private static final UTF8:Ljava/lang/String; = "UTF8"
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
sput-object v0, Lcom/twitter/android/sdk/TwitterAuthHelper;->RAND:Ljava/security/SecureRandom;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static attachHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)V
.registers 18
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v1
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-wide v6, p5
move-object/from16 v8, p7
invoke-static/range {v0 .. v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v9
const-string v0, "Authorization"
invoke-virtual {p0, v0, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static attachHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)V
.registers 18
invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;
move-result-object v1
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-wide v6, p5
move-object/from16 v8, p7
invoke-static/range {v0 .. v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v9
const-string v0, "Authorization"
invoke-virtual {p0, v0, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public static makeAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 14
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p4, :cond_29
const-string v0, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""
const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""
const/4 v2, 0x7
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "https://api.twitter.com/"
aput-object v3, v2, v4
const-string v3, "1.0"
aput-object v3, v2, v5
aput-object p2, v2, v6
aput-object p3, v2, v7
aput-object p0, v2, v8
const/4 v3, 0x5
aput-object p1, v2, v3
const/4 v3, 0x6
const-string v4, "HMAC-SHA1"
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_28
return-object v1
:cond_29
const-string v0, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""
const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""
const/16 v2, 0x8
new-array v2, v2, [Ljava/lang/Object;
const-string v3, "https://api.twitter.com/"
aput-object v3, v2, v4
const-string v3, "1.0"
aput-object v3, v2, v5
aput-object p4, v2, v6
aput-object p2, v2, v7
aput-object p3, v2, v8
const/4 v3, 0x5
aput-object p0, v2, v3
const/4 v3, 0x6
aput-object p1, v2, v3
const/4 v3, 0x7
const-string v4, "HMAC-SHA1"
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_28
.end method
.method public static makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;
.registers 21
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/twitter/android/sdk/TwitterAuthHelper;->RAND:Ljava/security/SecureRandom;
invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-wide/16 v1, 0x3e8
div-long v9, p6, v1
invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v5
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object/from16 v6, p4
move-object/from16 v7, p8
invoke-static/range {v1 .. v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeSignatureBase(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p5
invoke-static {v8, v0, p3}, Lcom/twitter/android/sdk/TwitterAuthHelper;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
move-object/from16 v0, p4
invoke-static {v11, v0, v4, v5, p2}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static makeSignatureBase(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
.registers 21
invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;
move-result-object v4
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
if-eqz v4, :cond_e
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_e
if-eqz p6, :cond_34
invoke-interface/range {p6 .. p6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_34
const-string v12, "application/x-www-form-urlencoded"
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_34
:try_start_22
invoke-static/range {p6 .. p6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v5
invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v12
if-nez v12, :cond_31
const-string v12, "&"
invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_31
invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_34
:cond_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_d6
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
const/4 v13, 0x1
invoke-static {v12, v13}, Lcom/twitter/android/sdk/TwitterAuthHelper;->parseForm(Ljava/lang/String;Z)Ljava/util/TreeMap;
move-result-object v9
const-string v12, "oauth_consumer_key"
move-object/from16 v0, p5
invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v12, "oauth_nonce"
move-object/from16 v0, p3
invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v12, "oauth_signature_method"
const-string v13, "HMAC-SHA1"
invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v12, "oauth_timestamp"
move-object/from16 v0, p4
invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v12, "oauth_version"
const-string v13, "1.0"
invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p2, :cond_69
const-string v12, "oauth_token"
move-object/from16 v0, p2
invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_69
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlFromRequest(Ljava/net/URI;)Ljava/lang/String;
move-result-object v11
const-string v12, "&"
invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-static {v11}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, "&"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v9}, Ljava/util/TreeMap;->size()I
move-result v8
const/4 v3, 0x0
invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;
move-result-object v12
invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_92
:cond_92
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_d1
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/Map$Entry;
invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, "%3D"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/lang/String;
invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x1
if-ge v3, v8, :cond_92
const-string v12, "%26"
invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_92
:cond_d1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
return-object v12
:catch_d6
move-exception v12
goto/16 :goto_34
.end method
.method public static parseForm(Ljava/lang/String;Z)Ljava/util/TreeMap;
.registers 13
const/4 v10, 0x1
const/4 v9, 0x0
new-instance v3, Ljava/util/TreeMap;
invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
if-eqz p0, :cond_5f
const-string v6, "&"
invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v2, v0
const/4 v1, 0x0
:goto_11
if-ge v1, v2, :cond_5f
aget-object v5, v0, v1
const-string v6, "="
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v6, v4
const/4 v7, 0x2
if-ne v6, v7, :cond_3f
if-eqz p1, :cond_37
aget-object v6, v4, v9
const-string v7, "UTF8"
invoke-static {v6, v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
aget-object v7, v4, v10
const-string v8, "UTF8"
invoke-static {v7, v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_34
:cond_34
add-int/lit8 v1, v1, 0x1
goto :goto_11
:cond_37
aget-object v6, v4, v9
aget-object v7, v4, v10
invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_34
:cond_3f
aget-object v6, v4, v9
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_34
if-eqz p1, :cond_57
aget-object v6, v4, v9
const-string v7, "UTF8"
invoke-static {v6, v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v7, ""
invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_34
:cond_57
aget-object v6, v4, v9
const-string v7, ""
invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_34
:cond_5f
return-object v3
.end method
.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 13
if-nez p2, :cond_4
:try_start_2
const-string p2, ""
:cond_4
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "UTF8"
invoke-static {p1, v9}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const/16 v9, 0x26
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "UTF8"
invoke-static {p2, v9}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v8, "UTF8"
invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v3
new-instance v7, Ljavax/crypto/spec/SecretKeySpec;
const-string v8, "HmacSHA1"
invoke-direct {v7, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
const-string v8, "HmacSHA1"
invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
move-result-object v4
invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
const-string v8, "UTF8"
invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->doFinal([B)[B
move-result-object v5
new-instance v6, Ljava/lang/String;
const/4 v8, 0x0
invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B
move-result-object v8
const-string v9, "UTF8"
invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
const-string v8, "UTF8"
invoke-static {v6, v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_58
.catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_58} :catch_5a
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_58} :catch_5e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_58} :catch_62
move-result-object v8
:goto_59
return-object v8
:catch_5a
move-exception v1
const-string v8, ""
goto :goto_59
:catch_5e
move-exception v1
const-string v8, ""
goto :goto_59
:catch_62
move-exception v1
const-string v8, ""
goto :goto_59
.end method
.method public static urlFromRequest(Ljava/net/URI;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p0, :cond_5
:try_start_2
const-string v1, ""
:goto_4
return-object v1
:cond_5
invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_a
move-result-object v1
goto :goto_4
:catch_a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public static urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p0, :cond_5
:try_start_2
const-string v1, ""
:goto_4
return-object v1
:cond_5
invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_a
move-result-object v1
goto :goto_4
:catch_a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method