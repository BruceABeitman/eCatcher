.class  Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private final accessToken:Ljava/lang/String;
.field private final applicationId:Ljava/lang/String;
.method constructor <init>(Lcom/facebook/Session;)V
.registers 4
invoke-virtual {p1}, Lcom/facebook/Session;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/Session;->d()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a
const/4 p1, 0x0
:cond_a
iput-object p1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
return-void
.end method
.method private writeReplace()Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;
iget-object v1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/lang/String;B)V
return-object v0
.end method
.method final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
return-object v0
.end method
.method final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
if-nez v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
check-cast p1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
iget-object v1, p1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/internal/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget-object v1, p1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/internal/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
if-nez v0, :cond_c
move v0, v1
:goto_6
iget-object v2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
if-nez v2, :cond_13
:goto_a
xor-int/2addr v0, v1
return v0
:cond_c
iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_13
iget-object v1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_a
.end method