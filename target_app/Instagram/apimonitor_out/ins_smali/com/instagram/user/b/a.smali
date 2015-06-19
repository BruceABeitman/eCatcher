.class final Lcom/instagram/user/b/a;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "LocalUserDeserializer.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_a
const/4 v0, 0x0
:cond_9
return-object v0
:cond_a
new-instance v0, Lcom/instagram/user/c/a;
invoke-direct {v0}, Lcom/instagram/user/c/a;-><init>()V
:cond_f
:goto_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
const-string v2, "id"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Ljava/lang/String;)V
goto :goto_f
:cond_2e
const-string v2, "username"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/String;)V
goto :goto_f
:cond_3e
const-string v2, "full_name"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/String;)V
goto :goto_f
:cond_4e
const-string v2, "biography"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->f(Ljava/lang/String;)V
goto :goto_f
:cond_5e
const-string v2, "blocking"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Z)V
goto :goto_f
:cond_6e
const-string v2, "external_url"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_7e
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->g(Ljava/lang/String;)V
goto :goto_f
:cond_7e
const-string v2, "geo_media_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_93
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/Integer;)V
goto/16 :goto_f
:cond_93
const-string v2, "usertags_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a8
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Ljava/lang/Integer;)V
goto/16 :goto_f
:cond_a8
const-string v2, "follower_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b9
invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Integer;)V
goto/16 :goto_f
:cond_b9
const-string v2, "following_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ca
invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Ljava/lang/Integer;)V
goto/16 :goto_f
:cond_ca
const-string v2, "follow_status"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_df
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/user/c/c;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V
goto/16 :goto_f
:cond_df
const-string v2, "last_follow_status"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_f4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/user/c/c;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
goto/16 :goto_f
:cond_f4
const-string v2, "is_staff"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_105
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Z)V
goto/16 :goto_f
:cond_105
const-string v2, "media_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_116
invoke-static {p0}, Lcom/instagram/user/b/a;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->c(Ljava/lang/Integer;)V
goto/16 :goto_f
:cond_116
const-string v2, "privacy_status"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_12b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/user/c/e;->valueOf(Ljava/lang/String;)Lcom/instagram/user/c/e;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
goto/16 :goto_f
:cond_12b
const-string v2, "profile_pic_url"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_13c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->d(Ljava/lang/String;)V
goto/16 :goto_f
:cond_13c
const-string v2, "is_verified"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->e(Z)V
goto/16 :goto_f
:cond_14d
const-string v2, "usertag_review_enabled"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->b(Z)V
goto/16 :goto_f
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/Integer;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_9
.end method
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/instagram/user/b/a;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
.end method