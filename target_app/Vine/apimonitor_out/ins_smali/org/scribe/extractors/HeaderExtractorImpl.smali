.class public Lorg/scribe/extractors/HeaderExtractorImpl;
.super Ljava/lang/Object;
.source "HeaderExtractorImpl.java"
.implements Lorg/scribe/extractors/HeaderExtractor;
.field public static final ESTIMATED_PARAM_LENGTH:I = 0x14
.field private static final PARAM_SEPARATOR:Ljava/lang/String; = ", "
.field private static final PREAMBLE:Ljava/lang/String; = "OAuth "
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private checkPreconditions(Lorg/scribe/model/OAuthRequest;)V
.registers 3
const-string v0, "Cannot extract a header from a null object"
invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-gtz v0, :cond_1b
:cond_15
new-instance v0, Lorg/scribe/exceptions/OAuthParametersMissingException;
invoke-direct {v0, p1}, Lorg/scribe/exceptions/OAuthParametersMissingException;-><init>(Lorg/scribe/model/OAuthRequest;)V
throw v0
:cond_1b
return-void
.end method
.method public extract(Lorg/scribe/model/OAuthRequest;)Ljava/lang/String;
.registers 10
invoke-direct {p0, p1}, Lorg/scribe/extractors/HeaderExtractorImpl;->checkPreconditions(Lorg/scribe/model/OAuthRequest;)V
invoke-virtual {p1}, Lorg/scribe/model/OAuthRequest;->getOauthParameters()Ljava/util/Map;
move-result-object v3
new-instance v1, Ljava/lang/StringBuilder;
invoke-interface {v3}, Ljava/util/Map;->size()I
move-result v4
mul-int/lit8 v4, v4, 0x14
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v4, "OAuth "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_5d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v4
const-string v5, "OAuth "
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-le v4, v5, :cond_3c
const-string v4, ", "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3c
const-string v5, "%s=\"%s\""
const/4 v4, 0x2
new-array v6, v4, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
aput-object v7, v6, v4
const/4 v7, 0x1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v4}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1f
:cond_5d
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method