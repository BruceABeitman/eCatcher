.class public Lcom/facebook/katana/service/api/FacebookNotifications;
.super Ljava/lang/Object;
.source "FacebookNotifications.java"
.field private static final EVENT_INVITE_KEY:Ljava/lang/String; = "event_invite"
.field private static final FRIEND_REQUEST_KEY:Ljava/lang/String; = "friend_request"
.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"
.field private static final POKE_KEY:Ljava/lang/String; = "poke"
.field private static mMostRecentEventInviteId:J
.field private static mMostRecentFriendRequestId:J
.field private static mMostRecentMessageId:J
.field private static mMostRecentPokeId:J
.field private final mEventInvites:Ljava/util/List;
.field private final mFriendRequests:Ljava/util/List;
.field private final mUnreadMessages:I
.field private final mUnreadPokes:I
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 25
invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V
const-string v3, "most_recent"
const-string v4, "unread"
const/4 v5, 0x0
const/4 v6, -0x1
const/4 v7, 0x0
const-wide/16 v12, -0x1
const/16 v18, 0x0
const-wide/16 v14, -0x1
const/16 v19, 0x0
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
:goto_2c
sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_40
if-lez v6, :cond_192
new-instance v20, Lcom/facebook/katana/service/api/FacebookApiException;
move-object/from16 v0, v20
move v1, v6
move-object v2, v7
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
throw v20
:cond_40
sget-object v20, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_d9
if-eqz v5, :cond_5d
const-string v20, "messages"
move-object v0, v5
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_92
:goto_55
sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_62
:goto_5d
:cond_5d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
goto :goto_2c
:cond_62
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_7d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v20, "most_recent"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_82
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v12
:goto_7d
:cond_7d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
goto :goto_55
:cond_82
const-string v20, "unread"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_7d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v18
goto :goto_7d
:cond_92
const-string v20, "pokes"
move-object v0, v5
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_d5
:goto_9d
sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-eq v0, v1, :cond_5d
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_c0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v20, "most_recent"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_c5
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v14
:goto_c0
:cond_c0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
goto :goto_9d
:cond_c5
const-string v20, "unread"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_c0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v19
goto :goto_c0
:cond_d5
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_5d
:cond_d9
sget-object v20, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_14a
if-eqz v5, :cond_5d
const-string v20, "friend_requests"
move-object v0, v5
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_114
:goto_ee
sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-eq v0, v1, :cond_5d
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_10f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
move-object/from16 v20, v0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v21
invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v21
invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_10f
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
goto :goto_ee
:cond_114
const-string v20, "event_invites"
move-object v0, v5
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_145
:goto_11f
sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-eq v0, v1, :cond_5d
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_140
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
move-object/from16 v20, v0
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v21
invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v21
invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_140
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v17
goto :goto_11f
:cond_145
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_5d
:cond_14a
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_167
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v20, "error_code"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_5d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v6
goto/16 :goto_5d
:cond_167
sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_184
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v20, "error_msg"
move-object v0, v10
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_5d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
goto/16 :goto_5d
:cond_184
sget-object v20, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
move-object/from16 v0, v17
move-object/from16 v1, v20
if-ne v0, v1, :cond_5d
invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto/16 :goto_5d
:cond_192
sget-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentMessageId:J
cmp-long v20, v12, v20
if-eqz v20, :cond_213
sput-wide v12, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentMessageId:J
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadMessages:I
:goto_1a0
sget-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentPokeId:J
cmp-long v20, v14, v20
if-eqz v20, :cond_21c
sput-wide v14, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentPokeId:J
move/from16 v0, v19
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadPokes:I
:goto_1ae
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_1ba
:cond_1ba
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-nez v20, :cond_225
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
move-result v20
if-lez v20, :cond_1e0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/Long;
invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J
move-result-wide v20
sput-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentFriendRequestId:J
:cond_1e0
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_1ec
:cond_1ec
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-nez v20, :cond_243
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
move-result v20
if-lez v20, :cond_212
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/Long;
invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J
move-result-wide v20
sput-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentEventInviteId:J
:cond_212
return-void
:cond_213
const/16 v20, 0x0
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadMessages:I
goto :goto_1a0
:cond_21c
const/16 v20, 0x0
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadPokes:I
goto :goto_1ae
:cond_225
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/Long;
invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J
move-result-wide v8
if-nez v16, :cond_23e
sget-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentFriendRequestId:J
cmp-long v20, v8, v20
if-nez v20, :cond_1ba
const/16 v16, 0x1
invoke-interface {v11}, Ljava/util/Iterator;->remove()V
goto/16 :goto_1ba
:cond_23e
invoke-interface {v11}, Ljava/util/Iterator;->remove()V
goto/16 :goto_1ba
:cond_243
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/Long;
invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J
move-result-wide v8
if-nez v16, :cond_25b
sget-wide v20, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentEventInviteId:J
cmp-long v20, v8, v20
if-nez v20, :cond_1ec
const/16 v16, 0x1
invoke-interface {v11}, Ljava/util/Iterator;->remove()V
goto :goto_1ec
:cond_25b
invoke-interface {v11}, Ljava/util/Iterator;->remove()V
goto :goto_1ec
.end method
.method public static load(Landroid/content/Context;)V
.registers 3
const-string v0, "message"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getLastSeenId(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentMessageId:J
const-string v0, "poke"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getLastSeenId(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentPokeId:J
const-string v0, "friend_request"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getLastSeenId(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentFriendRequestId:J
const-string v0, "event_invite"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getLastSeenId(Landroid/content/Context;Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentEventInviteId:J
return-void
.end method
.method public static save(Landroid/content/Context;)V
.registers 4
const-string v0, "message"
sget-wide v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentMessageId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setLastSeenId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
const-string v0, "poke"
sget-wide v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentPokeId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setLastSeenId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
const-string v0, "friend_request"
sget-wide v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentFriendRequestId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setLastSeenId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
const-string v0, "event_invite"
sget-wide v1, Lcom/facebook/katana/service/api/FacebookNotifications;->mMostRecentEventInviteId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setLastSeenId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
return-void
.end method
.method public getEventInvites()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
return-object v0
.end method
.method public getFriendRequests()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
return-object v0
.end method
.method public getUnreadMessages()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadMessages:I
return v0
.end method
.method public getUnreadPokes()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadPokes:I
return v0
.end method
.method public hasNewNotifications()Z
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadMessages:I
if-nez v0, :cond_1a
iget v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mUnreadPokes:I
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mFriendRequests:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotifications;->mEventInvites:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x0
:goto_19
return v0
:cond_1a
const/4 v0, 0x1
goto :goto_19
.end method