.class public Ltwitter4j/auth/AccessToken;
.super Ltwitter4j/auth/OAuthToken;
.source "AccessToken.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L
.field private screenName:Ljava/lang/String;
.field private userId:J
.method constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;)V
const-wide/16 v1, -0x1
iput-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J
const-string v1, "screen_name"
invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
const-string v1, "user_id"
invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1d
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J
:cond_1d
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v2, -0x1
iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J
const-string v2, "-"
invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_1b
const/4 v2, 0x0
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:try_start_15
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J
:cond_1b
:goto_1b
:try_end_1b
.catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v2
goto :goto_1b
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
.registers 7
invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, -0x1
iput-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J
iput-wide p3, p0, Ltwitter4j/auth/AccessToken;->userId:J
return-void
.end method
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
.registers 3
invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_1b
move v1, v2
goto :goto_4
:cond_1b
move-object v0, p1
check-cast v0, Ltwitter4j/auth/AccessToken;
iget-wide v3, p0, Ltwitter4j/auth/AccessToken;->userId:J
iget-wide v5, v0, Ltwitter4j/auth/AccessToken;->userId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_28
move v1, v2
goto :goto_4
:cond_28
iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
if-eqz v3, :cond_38
iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
iget-object v4, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_36
move v1, v2
goto :goto_4
:cond_38
iget-object v3, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_36
.end method
.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getScreenName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
return-object v0
.end method
.method public bridge synthetic getToken()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getTokenSecret()Ljava/lang/String;
.registers 2
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUserId()J
.registers 3
iget-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J
return-wide v0
.end method
.method public hashCode()I
.registers 8
invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->hashCode()I
move-result v0
mul-int/lit8 v2, v0, 0x1f
iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
if-eqz v1, :cond_20
iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_10
add-int v0, v2, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J
iget-wide v4, p0, Ltwitter4j/auth/AccessToken;->userId:J
const/16 v6, 0x20
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
return v0
:cond_20
const/4 v1, 0x0
goto :goto_10
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "AccessToken{screenName=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", userId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method