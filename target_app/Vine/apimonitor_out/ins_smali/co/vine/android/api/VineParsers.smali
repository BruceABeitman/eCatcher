.class public Lco/vine/android/api/VineParsers;
.super Ljava/lang/Object;
.source "VineParsers.java"
.field private static final ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final CHANNELS_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final CONVERSATIONS_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final GROUPED_ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field public static final JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory; = null
.field private static final LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final MESSAGES_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final NOTIFICATION_SETTING_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final PARAM_DATA:Ljava/lang/String; = "data"
.field private static final PARAM_EDITION_ID:Ljava/lang/String; = "editionId"
.field private static final PARAM_NAME:Ljava/lang/String; = "name"
.field private static final PARAM_RECORDS:Ljava/lang/String; = "records"
.field private static final PARAM_USERS:Ljava/lang/String; = "users"
.field private static final POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
.field private static final USERS_PARSER:Lco/vine/android/api/VineParsers$RecordListParser;
.field private static final USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;
new-instance v0, Lco/vine/android/api/VineParsers$1;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->USERS_PARSER:Lco/vine/android/api/VineParsers$RecordListParser;
new-instance v0, Lco/vine/android/api/VineParsers$2;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$2;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$3;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$3;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$4;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$4;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$5;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$5;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$6;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$6;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$7;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$7;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->GROUPED_ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$8;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$8;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$9;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$9;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->CHANNELS_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$10;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$10;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->MESSAGES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$11;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$11;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->CONVERSATIONS_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
new-instance v0, Lco/vine/android/api/VineParsers$12;
invoke-direct {v0}, Lco/vine/android/api/VineParsers$12;-><init>()V
sput-object v0, Lco/vine/android/api/VineParsers;->NOTIFICATION_SETTING_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
.registers 3
invoke-static {p0, p1}, Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v0
return-object v0
.end method
.method static synthetic access$1000(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotificationSetting;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseNotificationSetting(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotificationSetting;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
move-result-object v0
return-object v0
.end method
.method static synthetic access$500(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
move-result-object v0
return-object v0
.end method
.method static synthetic access$600(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEverydayNotification;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseEverydayNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEverydayNotification;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseTag(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;
move-result-object v0
return-object v0
.end method
.method static synthetic access$800(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineChannel;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseChannel(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineChannel;
move-result-object v0
return-object v0
.end method
.method static synthetic access$900(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineConversation;
.registers 2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseConversation(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineConversation;
move-result-object v0
return-object v0
.end method
.method public static createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
sget-object v1, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;
invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public static createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
sget-object v1, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;
invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method private static parseActivityCounts(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineActivityCounts;
.registers 8
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
:goto_6
if-eqz v4, :cond_3a
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v5, :cond_3a
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_40
:cond_17
:goto_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
goto :goto_6
:pswitch_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v5, "messages"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
goto :goto_17
:cond_2d
const-string v5, "notifications"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v2
goto :goto_17
:cond_3a
new-instance v3, Lco/vine/android/api/VineActivityCounts;
invoke-direct {v3, v1, v2}, Lco/vine/android/api/VineActivityCounts;-><init>(II)V
return-object v3
:pswitch_data_40
.packed-switch 0x3
:pswitch_1c
.end packed-switch
.end method
.method private static parseBlockedUsers(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
:goto_9
if-eqz v1, :cond_32
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v3, :cond_32
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_34
:goto_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_9
:pswitch_1f
new-instance v2, Lco/vine/android/api/VineUser;
invoke-direct {v2}, Lco/vine/android/api/VineUser;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
iput-wide v3, v2, Lco/vine/android/api/VineUser;->userId:J
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1a
:pswitch_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1a
:cond_32
return-object v0
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_2e
:pswitch_2e
:pswitch_1f
.end packed-switch
.end method
.method private static declared-synchronized parseChannel(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineChannel;
.registers 8
const-class v4, Lco/vine/android/api/VineParsers;
monitor-enter v4
:try_start_3
new-instance v2, Lco/vine/android/api/VineChannel;
invoke-direct {v2}, Lco/vine/android/api/VineChannel;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
:goto_c
if-eqz v1, :cond_a1
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v3, :cond_a1
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v5
aget v3, v3, v5
packed-switch v3, :pswitch_data_a4
:goto_1d
:cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_c
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_26
goto :goto_1d
:catchall_26
move-exception v3
monitor-exit v4
throw v3
:pswitch_29
:try_start_29
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v3, "channel"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lco/vine/android/api/VineChannel;->channel:Ljava/lang/String;
goto :goto_1d
:cond_3c
const-string v3, "iconFullUrl"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lco/vine/android/api/VineChannel;->iconFullUrl:Ljava/lang/String;
goto :goto_1d
:cond_4b
const-string v3, "retinaIconFullUrl"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lco/vine/android/api/VineChannel;->retinaIconFullUrl:Ljava/lang/String;
goto :goto_1d
:cond_5a
const-string v3, "created"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static {v3, v5}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v5
iput-wide v5, v2, Lco/vine/android/api/VineChannel;->created:J
goto :goto_1d
:cond_6f
const-string v3, "backgroundColor"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lco/vine/android/api/VineChannel;->backgroundColor:Ljava/lang/String;
goto :goto_1d
:cond_7e
const-string v3, "fontColor"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lco/vine/android/api/VineChannel;->fontColor:Ljava/lang/String;
goto :goto_1d
:pswitch_8d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v3, "channelId"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v2, Lco/vine/android/api/VineChannel;->channelId:J
:try_end_9f
.catchall {:try_start_29 .. :try_end_9f} :catchall_26
goto/16 :goto_1d
:cond_a1
monitor-exit v4
return-object v2
nop
:pswitch_data_a4
.packed-switch 0x1
:pswitch_22
:pswitch_22
:pswitch_8d
:pswitch_29
.end packed-switch
.end method
.method private static parseClientFlags(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineClientFlags;
.registers 13
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-wide/16 v7, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v10
:goto_c
if-eqz v10, :cond_88
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v10, v0, :cond_88
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v11
aget v0, v0, v11
packed-switch v0, :pswitch_data_8e
:goto_1d
:cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v10
goto :goto_c
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v9
const-string v0, "messageTitle"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_1d
:cond_33
const-string v0, "messageText"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_1d
:cond_40
const-string v0, "apiHost"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_1d
:cond_4d
const-string v0, "rtcHost"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_1d
:cond_5a
const-string v0, "mediaHost"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_1d
:cond_67
const-string v0, "exploreHost"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_1d
:pswitch_74
const-string v0, "ttl_s"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v7
:cond_84
:pswitch_84
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1d
:cond_88
new-instance v0, Lco/vine/android/api/VineClientFlags;
invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineClientFlags;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
return-object v0
:pswitch_data_8e
.packed-switch 0x1
:pswitch_84
:pswitch_84
:pswitch_74
:pswitch_22
.end packed-switch
.end method
.method public static parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;
.registers 6
const-string v3, "Parse client profile."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:goto_e
if-eqz v2, :cond_5a
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_5a
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_60
:goto_1f
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_e
:try_start_24
:pswitch_24
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:try_end_2f
.catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2f} :catch_30
goto :goto_1f
:catch_30
move-exception v0
const-string v3, "Failed to parse: {}."
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_1f
:pswitch_3b
:try_start_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:try_end_46
.catch Lorg/json/JSONException; {:try_start_3b .. :try_end_46} :catch_47
goto :goto_1f
:catch_47
move-exception v0
const-string v3, "Failed to parse: {}."
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_1f
:pswitch_52
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1f
:pswitch_56
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1f
:cond_5a
const-string v3, "Parsed client profile: "
invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
return-object v1
:pswitch_data_60
.packed-switch 0x1
:pswitch_52
:pswitch_56
:pswitch_3b
:pswitch_1f
:pswitch_24
:pswitch_24
.end packed-switch
.end method
.method private static parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
.registers 23
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v21
const/4 v6, 0x0
const/4 v5, 0x0
const-wide/16 v8, 0x0
const-wide/16 v3, 0x0
const/4 v10, 0x0
const/4 v7, 0x0
const-wide/16 v11, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/16 v17, 0x0
:goto_12
if-eqz v21, :cond_102
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v21
if-eq v0, v2, :cond_102
sget-object v2, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v15
aget v2, v2, v15
packed-switch v2, :pswitch_data_112
:goto_25
:cond_25
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v21
goto :goto_12
:pswitch_2a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v19
const-string v2, "user"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v7
goto :goto_25
:cond_3d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_25
:pswitch_41
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v19
const-string v2, "avatarUrl"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_54
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_25
:cond_54
const-string v2, "comment"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_63
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_25
:cond_63
const-string v2, "created"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_78
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
const-string v15, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static {v2, v15}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v8
goto :goto_25
:cond_78
const-string v2, "location"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_87
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v10
goto :goto_25
:cond_87
const-string v2, "username"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v13
goto :goto_25
:pswitch_96
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v19
const-string v2, "commentId"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_aa
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto/16 :goto_25
:cond_aa
const-string v2, "userId"
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v11
goto/16 :goto_25
:pswitch_ba
const-string v2, "verified"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v15
invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v14
goto/16 :goto_25
:pswitch_cc
const-string v2, "entities"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v15
invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fd
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v21
:goto_dc
if-eqz v21, :cond_25
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v21
if-eq v0, v2, :cond_25
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
move-result-object v20
if-nez v17, :cond_ef
new-instance v17, Ljava/util/ArrayList;
invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
:cond_ef
if-eqz v20, :cond_f8
move-object/from16 v0, v17
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_f8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v21
goto :goto_dc
:cond_fd
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_25
:cond_102
if-eqz v17, :cond_107
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V
:cond_107
new-instance v2, Lco/vine/android/api/VineComment;
const-wide/16 v15, 0x0
const/16 v18, 0x0
invoke-direct/range {v2 .. v18}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;Z)V
return-object v2
nop
:pswitch_data_112
.packed-switch 0x1
:pswitch_2a
:pswitch_cc
:pswitch_96
:pswitch_41
:pswitch_ba
:pswitch_ba
.end packed-switch
.end method
.method private static parseConversation(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineConversation;
.registers 26
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
const/4 v15, 0x0
const-wide/16 v3, 0x0
const-wide/16 v7, 0x0
const-wide/16 v5, 0x0
const-wide/16 v16, 0x0
const-wide/16 v12, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x1
:goto_12
if-eqz v20, :cond_12a
sget-object v23, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v20
move-object/from16 v1, v23
if-eq v0, v1, :cond_12a
sget-object v23, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v24
aget v23, v23, v24
packed-switch v23, :pswitch_data_130
:goto_27
:cond_27
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
goto :goto_12
:pswitch_2c
const-string v23, "inbox"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_27
const-string v23, "other"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_27
const/4 v11, 0x2
goto :goto_27
:pswitch_46
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v14
const-string v23, "conversationId"
move-object/from16 v0, v23
invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_59
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto :goto_27
:cond_59
const-string v23, "lastMessage"
move-object/from16 v0, v23
invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_68
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
goto :goto_27
:cond_68
const-string v23, "lastMessageRead"
move-object/from16 v0, v23
invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_77
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v16
goto :goto_27
:cond_77
const-string v23, "unreadMessageCount"
move-object/from16 v0, v23
invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_86
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v12
goto :goto_27
:cond_86
const-string v23, "createdBy"
move-object/from16 v0, v23
invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_27
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v7
goto :goto_27
:pswitch_95
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_27
:pswitch_99
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v19
const-string v23, "deleted"
move-object/from16 v0, v23
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_27
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v15
goto/16 :goto_27
:pswitch_af
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v19
const-string v23, "messages"
move-object/from16 v0, v23
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_e4
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
:goto_c3
if-eqz v20, :cond_27
sget-object v23, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v20
move-object/from16 v1, v23
if-eq v0, v1, :cond_27
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parsePrivateMessage(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessage;
move-result-object v18
if-nez v9, :cond_d8
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
:cond_d8
if-eqz v9, :cond_df
move-object/from16 v0, v18
invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_df
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
goto :goto_c3
:cond_e4
const-string v23, "users"
move-object/from16 v0, v23
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v23
if-eqz v23, :cond_125
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
:goto_f4
if-eqz v20, :cond_27
sget-object v23, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v20
move-object/from16 v1, v23
if-eq v0, v1, :cond_27
sget-object v23, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v24
aget v23, v23, v24
packed-switch v23, :pswitch_data_140
:goto_109
:cond_109
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v20
goto :goto_f4
:pswitch_10e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v21
if-nez v10, :cond_119
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
:cond_119
if-eqz v10, :cond_109
invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v23
move-object/from16 v0, v23
invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_109
:cond_125
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_27
:cond_12a
new-instance v2, Lco/vine/android/api/VineConversation;
invoke-direct/range {v2 .. v13}, Lco/vine/android/api/VineConversation;-><init>(JJJLjava/util/ArrayList;Ljava/util/ArrayList;IJ)V
return-object v2
:pswitch_data_130
.packed-switch 0x1
:pswitch_95
:pswitch_af
:pswitch_46
:pswitch_2c
:pswitch_99
:pswitch_99
.end packed-switch
:pswitch_data_140
.packed-switch 0x3
:pswitch_10e
.end packed-switch
.end method
.method private static parseEditions(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
const/4 v0, 0x0
:goto_a
if-eqz v2, :cond_55
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_55
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_50
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
:goto_18
if-eqz v2, :cond_50
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_50
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_32
const-string v3, "editionId"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_37
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:goto_32
:cond_32
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_18
:cond_37
const-string v3, "name"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_32
new-instance v3, Landroid/util/Pair;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_32
:cond_50
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_a
:cond_55
return-object v1
.end method
.method public static parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
.registers 12
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
const-wide/16 v6, 0x0
const/4 v4, -0x1
const/4 v5, -0x1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_b
if-eqz v9, :cond_93
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v0, :cond_93
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v0, v0, v10
packed-switch v0, :pswitch_data_9a
:goto_1c
:cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_b
:pswitch_21
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v8
const-string v0, "type"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_1c
:cond_32
const-string v0, "link"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_1c
:cond_3f
const-string v0, "title"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_1c
:pswitch_4c
const-string v0, "range"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_5c
if-eqz v9, :cond_82
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v0, :cond_82
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v0, v0, v10
packed-switch v0, :pswitch_data_a4
:goto_6d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_5c
:pswitch_72
const/4 v0, -0x1
if-ne v4, v0, :cond_7a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
goto :goto_6d
:cond_7a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
goto :goto_6d
:cond_7f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:cond_82
:pswitch_82
const-string v0, "id"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v6
goto :goto_1c
:cond_93
new-instance v0, Lco/vine/android/api/VineEntity;
invoke-direct/range {v0 .. v7}, Lco/vine/android/api/VineEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
return-object v0
nop
:pswitch_data_a4
.packed-switch 0x3
:pswitch_72
.end packed-switch
:pswitch_data_9a
.packed-switch 0x2
:pswitch_4c
:pswitch_82
:pswitch_21
.end packed-switch
.end method
.method public static parseError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
:goto_7
if-eqz v3, :cond_58
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_58
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_5e
:cond_18
:goto_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
goto :goto_7
:pswitch_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_18
:pswitch_21
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_18
:pswitch_25
const-string v4, "code"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
goto :goto_18
:pswitch_36
const-string v4, "error"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_47
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_18
:cond_47
const-string v4, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_18
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_18
:cond_58
new-instance v4, Lco/vine/android/api/VineError;
invoke-direct {v4, v1, v2, v0}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
return-object v4
:pswitch_data_5e
.packed-switch 0x1
:pswitch_1d
:pswitch_21
:pswitch_25
:pswitch_36
.end packed-switch
.end method
.method private static parseEverydayNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEverydayNotification;
.registers 22
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v18
const/4 v3, 0x0
const-wide/16 v4, 0x0
const-wide v11, 0x7fffffffffffffffL
const/4 v6, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
const/4 v7, 0x0
const/4 v10, 0x0
const/4 v13, 0x0
const-wide/16 v14, 0x0
:goto_14
if-eqz v18, :cond_135
sget-object v19, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v18
move-object/from16 v1, v19
if-eq v0, v1, :cond_135
sget-object v19, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v20
aget v19, v19, v20
packed-switch v19, :pswitch_data_140
:cond_29
:goto_29
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v18
goto :goto_14
:pswitch_2e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v17
const-string v19, "body"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_43
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_29
:cond_43
const-string v19, "type"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_54
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_29
:cond_54
const-string v19, "lastActivityTime"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_6b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v19
const-string v20, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static/range {v19 .. v20}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v11
goto :goto_29
:cond_6b
const-string v19, "anchor"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_29
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v19
invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v14
goto :goto_29
:pswitch_80
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v17
const-string v19, "activityId"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_95
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v4
goto :goto_29
:cond_95
const-string v19, "isNew"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_b2
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v19
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_b0
const/4 v13, 0x1
:goto_ae
goto/16 :goto_29
:cond_b0
const/4 v13, 0x0
goto :goto_ae
:cond_b2
const-string v19, "anchor"
move-object/from16 v0, v19
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_29
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v14
goto/16 :goto_29
:pswitch_c4
const-string v19, "entities"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_f5
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v18
:goto_d4
if-eqz v18, :cond_29
sget-object v19, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v18
move-object/from16 v1, v19
if-eq v0, v1, :cond_29
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
move-result-object v16
if-nez v9, :cond_e9
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
:cond_e9
if-eqz v16, :cond_f0
move-object/from16 v0, v16
invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_f0
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v18
goto :goto_d4
:cond_f5
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_29
:pswitch_fa
const-string v19, "user"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_10c
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v8
goto/16 :goto_29
:cond_10c
const-string v19, "post"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_11e
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
move-result-object v7
goto/16 :goto_29
:cond_11e
const-string v19, "milestone"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_130
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseMilestone(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineMilestone;
move-result-object v10
goto/16 :goto_29
:cond_130
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_29
:cond_135
new-instance v2, Lco/vine/android/api/VineEverydayNotification;
invoke-direct/range {v2 .. v15}, Lco/vine/android/api/VineEverydayNotification;-><init>(Ljava/lang/String;JLjava/lang/String;Lco/vine/android/api/VinePost;Lco/vine/android/api/VineUser;Ljava/util/ArrayList;Lco/vine/android/api/VineMilestone;JZJ)V
if-eqz v9, :cond_13f
invoke-static {v9}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V
:cond_13f
return-object v2
:pswitch_data_140
.packed-switch 0x1
:pswitch_fa
:pswitch_c4
:pswitch_80
:pswitch_2e
.end packed-switch
.end method
.method private static parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_4
if-eqz v0, :cond_40
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_40
sget-object v1, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_42
:cond_15
:pswitch_15
:goto_15
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_4
:pswitch_1a
const-string v1, "success"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
:goto_28
return-object v1
:pswitch_29
const-string v1, "success"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_38
sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;
goto :goto_28
:cond_38
:pswitch_38
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_15
:pswitch_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_15
:cond_40
const/4 v1, 0x0
goto :goto_28
:pswitch_data_42
.packed-switch 0x1
:pswitch_38
:pswitch_3c
:pswitch_15
:pswitch_15
:pswitch_1a
:pswitch_29
.end packed-switch
.end method
.method private static parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
.registers 8
new-instance v4, Lco/vine/android/api/VineLike;
invoke-direct {v4}, Lco/vine/android/api/VineLike;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
const/4 v2, -0x1
const/4 v0, 0x0
:goto_b
if-eqz v3, :cond_cd
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v5, :cond_cd
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_da
:goto_1c
:cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
goto :goto_b
:pswitch_21
const-string v5, "user"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1c
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v5
iput-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
goto :goto_1c
:pswitch_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1c
:pswitch_38
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v5, "created"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_51
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static {v5, v6}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v5
iput-wide v5, v4, Lco/vine/android/api/VineLike;->created:J
goto :goto_1c
:cond_51
const-string v5, "location"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_60
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
iput-object v5, v4, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;
goto :goto_1c
:cond_60
const-string v5, "avatarUrl"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
iput-object v5, v4, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;
goto :goto_1c
:cond_6f
const-string v5, "username"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
iput-object v5, v4, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;
goto :goto_1c
:pswitch_7e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v5, "likeId"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_91
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v4, Lco/vine/android/api/VineLike;->likeId:J
goto :goto_1c
:cond_91
const-string v5, "userId"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_a1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v4, Lco/vine/android/api/VineLike;->userId:J
goto/16 :goto_1c
:cond_a1
const-string v5, "verified"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_b1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
iput v5, v4, Lco/vine/android/api/VineLike;->verified:I
goto/16 :goto_1c
:cond_b1
const-string v5, "following"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_bf
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v2
goto/16 :goto_1c
:cond_bf
const-string v5, "blocked"
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
goto/16 :goto_1c
:cond_cd
iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
if-eqz v5, :cond_d9
iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
iput v2, v5, Lco/vine/android/api/VineUser;->following:I
iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
iput v0, v5, Lco/vine/android/api/VineUser;->blocked:I
:cond_d9
return-object v4
:pswitch_data_da
.packed-switch 0x1
:pswitch_21
:pswitch_34
:pswitch_7e
:pswitch_38
.end packed-switch
.end method
.method private static parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
.registers 6
const-wide/16 v0, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
:goto_6
if-eqz v2, :cond_31
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_31
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_36
:goto_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_6
:pswitch_1c
const-string v3, "likeId"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
goto :goto_17
:pswitch_2d
:cond_2d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_17
:cond_31
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
return-object v3
:pswitch_data_36
.packed-switch 0x1
:pswitch_2d
:pswitch_2d
:pswitch_1c
.end packed-switch
.end method
.method public static parseLogin(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
.registers 11
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v5, 0x0
const-wide/16 v3, 0x0
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v8
:goto_a
if-eqz v8, :cond_97
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v8, v0, :cond_97
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v8}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v9
aget v0, v0, v9
packed-switch v0, :pswitch_data_a2
:cond_1b
:goto_1b
:pswitch_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v8
goto :goto_a
:pswitch_20
const-string v0, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_82
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v8
:goto_30
if-eqz v8, :cond_1b
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v8, v0, :cond_1b
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v8}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v9
aget v0, v0, v9
packed-switch v0, :pswitch_data_b2
:goto_41
:cond_41
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v8
goto :goto_30
:pswitch_46
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
const-string v0, "key"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_41
:cond_57
const-string v0, "username"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_64
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_41
:cond_64
const-string v0, "edition"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_41
:pswitch_71
const-string v0, "userId"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto :goto_41
:cond_82
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1b
:pswitch_86
const-string v0, "success"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v7
goto :goto_1b
:cond_97
if-eqz v7, :cond_9f
new-instance v0, Lco/vine/android/api/VineLogin;
invoke-direct/range {v0 .. v5}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
:goto_9e
return-object v0
:cond_9f
const/4 v0, 0x0
goto :goto_9e
nop
:pswitch_data_a2
.packed-switch 0x1
:pswitch_20
:pswitch_1b
:pswitch_1b
:pswitch_1b
:pswitch_86
:pswitch_86
.end packed-switch
:pswitch_data_b2
.packed-switch 0x3
:pswitch_71
:pswitch_46
.end packed-switch
.end method
.method private static parseLoopsSubmission(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLoopSubmissionResponse;
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
:goto_5
if-eqz v2, :cond_30
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_30
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_36
:cond_16
:goto_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_5
:pswitch_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v3, "nextAfter"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
goto :goto_16
:pswitch_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_16
:cond_30
new-instance v3, Lco/vine/android/api/VineLoopSubmissionResponse;
invoke-direct {v3, v1}, Lco/vine/android/api/VineLoopSubmissionResponse;-><init>(I)V
return-object v3
:pswitch_data_36
.packed-switch 0x1
:pswitch_2c
:pswitch_2c
:pswitch_1b
.end packed-switch
.end method
.method public static parseMessageError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
.registers 6
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
:goto_6
if-eqz v2, :cond_46
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_46
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_4c
:cond_17
:goto_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_6
:pswitch_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_17
:pswitch_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_17
:pswitch_24
const-string v3, "code"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
goto :goto_17
:pswitch_35
const-string v3, "message"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_17
:cond_46
new-instance v3, Lco/vine/android/api/VineError;
invoke-direct {v3, v0, v1}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V
return-object v3
:pswitch_data_4c
.packed-switch 0x1
:pswitch_1c
:pswitch_20
:pswitch_24
:pswitch_35
.end packed-switch
.end method
.method public static parseMilestone(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineMilestone;
.registers 13
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v9, 0x0
const/4 v8, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v10
:goto_d
if-eqz v10, :cond_e0
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v10, v0, :cond_e0
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v11
aget v0, v0, v11
packed-switch v0, :pswitch_data_e6
:cond_1e
:goto_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v10
goto :goto_d
:pswitch_23
const-string v0, "backgroundImageUrl"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_1e
:cond_34
const-string v0, "backgroundVideoUrl"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_1e
:cond_45
const-string v0, "iconUrl"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_56
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_1e
:cond_56
const-string v0, "title"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_1e
:cond_67
const-string v0, "description"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_78
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_1e
:cond_78
const-string v0, "milestoneUrl"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_89
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_1e
:cond_89
const-string v0, "overlayAlpha"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v8
goto :goto_1e
:cond_9e
const-string v0, "overlayColor"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b8
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v7
goto/16 :goto_1e
:cond_b8
const-string v0, "gaussianBlurRadius"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v9
goto/16 :goto_1e
:pswitch_ce
const-string v0, "gaussianBlurRadius"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v9
goto/16 :goto_1e
:cond_e0
new-instance v0, Lco/vine/android/api/VineMilestone;
invoke-direct/range {v0 .. v9}, Lco/vine/android/api/VineMilestone;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFI)V
return-object v0
:pswitch_data_e6
.packed-switch 0x3
:pswitch_ce
:pswitch_23
.end packed-switch
.end method
.method private static parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
.registers 33
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v29
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const-wide/16 v7, 0x0
const-wide/16 v9, 0x0
const-wide/16 v11, 0x0
const-wide/16 v13, 0x0
const-wide/16 v17, 0x0
const-wide/16 v20, 0x0
const-wide/16 v22, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v28, 0x0
const/16 v25, 0x0
const/16 v26, 0x0
const/16 v19, 0x0
:goto_21
if-eqz v29, :cond_1f0
sget-object v30, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v29
move-object/from16 v1, v30
if-eq v0, v1, :cond_1f0
sget-object v30, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v29 .. v29}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v31
aget v30, v30, v31
packed-switch v30, :pswitch_data_20a
:goto_36
:cond_36
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v29
goto :goto_21
:pswitch_3b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v30, "avatarUrl"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_50
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_36
:cond_50
const-string v30, "body"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_69
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v30
invoke-static/range {v30 .. v30}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_36
:cond_69
const-string v30, "thumbnailUrl"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_7a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_36
:cond_7a
const-string v30, "created"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_36
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v30
const-string v31, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static/range {v30 .. v31}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v13
goto :goto_36
:pswitch_91
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v30, "notificationTypeId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_a6
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v16
goto :goto_36
:cond_a6
const-string v30, "notificationId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_b7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v7
goto :goto_36
:cond_b7
const-string v30, "userId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_c9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v9
goto/16 :goto_36
:cond_c9
const-string v30, "postId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_db
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v11
goto/16 :goto_36
:cond_db
const-string v30, "verified"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_f8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v30
const/16 v31, 0x1
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_f6
const/4 v15, 0x1
:goto_f4
goto/16 :goto_36
:cond_f6
const/4 v15, 0x0
goto :goto_f4
:cond_f8
const-string v30, "private"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_117
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v30
const/16 v31, 0x1
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_114
const/16 v28, 0x1
:goto_112
goto/16 :goto_36
:cond_114
const/16 v28, 0x0
goto :goto_112
:cond_117
const-string v30, "followRequested"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_136
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v30
const/16 v31, 0x1
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_133
const/16 v25, 0x1
:goto_131
goto/16 :goto_36
:cond_133
const/16 v25, 0x0
goto :goto_131
:cond_136
const-string v30, "following"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_155
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v30
const/16 v31, 0x1
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_152
const/16 v26, 0x1
:goto_150
goto/16 :goto_36
:cond_152
const/16 v26, 0x0
goto :goto_150
:cond_155
const-string v30, "conversationId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_167
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v17
goto/16 :goto_36
:cond_167
const-string v30, "unreadMessageCount"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_179
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v20
goto/16 :goto_36
:cond_179
const-string v30, "recipientUserId"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_36
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v22
goto/16 :goto_36
:pswitch_18b
const-string v30, "entities"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v31
invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_1be
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v29
:goto_19b
if-eqz v29, :cond_36
sget-object v30, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v29
move-object/from16 v1, v30
if-eq v0, v1, :cond_36
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
move-result-object v24
if-nez v19, :cond_1b0
new-instance v19, Ljava/util/ArrayList;
invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
:cond_1b0
if-eqz v24, :cond_1b9
move-object/from16 v0, v19
move-object/from16 v1, v24
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1b9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v29
goto :goto_19b
:cond_1be
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_36
:pswitch_1c3
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v30, "followRequested"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_1d9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v25
goto/16 :goto_36
:cond_1d9
const-string v30, "following"
move-object/from16 v0, v30
move-object/from16 v1, v27
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_36
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v26
goto/16 :goto_36
:pswitch_1eb
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_36
:cond_1f0
new-instance v2, Lco/vine/android/api/VineSingleNotification;
invoke-direct/range {v2 .. v23}, Lco/vine/android/api/VineSingleNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZIJLjava/util/ArrayList;JJ)V
if-eqz v19, :cond_1fa
invoke-static/range {v19 .. v19}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V
:cond_1fa
if-eqz v26, :cond_1ff
invoke-virtual {v2}, Lco/vine/android/api/VineSingleNotification;->setFollowing()V
:cond_1ff
if-eqz v25, :cond_204
invoke-virtual {v2}, Lco/vine/android/api/VineSingleNotification;->setFollowRequested()V
:cond_204
if-eqz v28, :cond_209
invoke-virtual {v2}, Lco/vine/android/api/VineSingleNotification;->setPrivate()V
:cond_209
return-object v2
:pswitch_data_20a
.packed-switch 0x1
:pswitch_1eb
:pswitch_18b
:pswitch_91
:pswitch_3b
:pswitch_1c3
:pswitch_1c3
.end packed-switch
.end method
.method private static parseNotificationSetting(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotificationSetting;
.registers 14
const/4 v10, 0x1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
:goto_f
if-eqz v9, :cond_ee
sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v11, :cond_ee
sget-object v11, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v12
aget v11, v11, v12
packed-switch v11, :pswitch_data_f4
:goto_20
:cond_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_f
:pswitch_25
const-string v11, "title"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_36
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_20
:cond_36
const-string v11, "section"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_47
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_20
:cond_47
const-string v11, "value"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_58
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_20
:cond_58
const-string v11, "name"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_20
:pswitch_69
const-string v11, "boolean"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v11
if-ne v11, v10, :cond_7d
move v1, v10
:goto_7c
goto :goto_20
:cond_7d
const/4 v1, 0x0
goto :goto_7c
:pswitch_7f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_20
:pswitch_83
const-string v11, "choices"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_e9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_93
if-eqz v9, :cond_20
sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v11, :cond_20
const/4 v7, 0x0
const/4 v8, 0x0
sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v9, v11, :cond_e4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_a3
if-eqz v9, :cond_cf
sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v11, :cond_cf
const-string v11, "title"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_be
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
:cond_b9
:goto_b9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_a3
:cond_be
const-string v11, "value"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_b9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v8
goto :goto_b9
:cond_cf
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v11
if-eqz v11, :cond_dc
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v11
if-nez v11, :cond_dc
move-object v7, v8
:cond_dc
new-instance v11, Landroid/util/Pair;
invoke-direct {v11, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_e4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_93
:cond_e9
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_20
:cond_ee
new-instance v0, Lco/vine/android/api/VineNotificationSetting;
invoke-direct/range {v0 .. v6}, Lco/vine/android/api/VineNotificationSetting;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
return-object v0
:pswitch_data_f4
.packed-switch 0x1
:pswitch_7f
:pswitch_83
:pswitch_69
:pswitch_25
.end packed-switch
.end method
.method private static parsePagedConversation(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
.registers 9
new-instance v3, Lco/vine/android/api/VineParsers$VinePagedConversation;
invoke-direct {v3}, Lco/vine/android/api/VineParsers$VinePagedConversation;-><init>()V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iput-object v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
:goto_11
if-eqz v4, :cond_eb
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v5, :cond_eb
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_ee
:goto_22
:cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
goto :goto_11
:pswitch_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_22
:pswitch_2b
const-string v5, "inbox"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_44
const-string v5, "other"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_44
const/4 v2, 0x2
:cond_44
:pswitch_44
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v5, "count"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_57
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
iput v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->count:I
goto :goto_22
:cond_57
const-string v5, "nextPage"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_66
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
iput v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->nextPage:I
goto :goto_22
:cond_66
const-string v5, "previousPage"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_75
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
iput v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->previousPage:I
goto :goto_22
:cond_75
const-string v5, "size"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_84
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v5
iput v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->size:I
goto :goto_22
:cond_84
const-string v5, "anchor"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_93
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->anchor:J
goto :goto_22
:cond_93
const-string v5, "unreadMessageCount"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_a2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->unreadMessageCount:J
goto :goto_22
:cond_a2
const-string v5, "lastMessageRead"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_b2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessageRead:J
goto/16 :goto_22
:cond_b2
const-string v5, "lastMessage"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
iput-wide v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessage:J
goto/16 :goto_22
:pswitch_c2
const-string v5, "records"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
:goto_d2
if-eqz v4, :cond_22
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v5, :cond_22
const/4 v5, 0x0
invoke-virtual {p1, p0, v5}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePrivateMessage;
if-eqz v1, :cond_e6
iget-object v5, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_e6
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
goto :goto_d2
:cond_eb
iput v2, v3, Lco/vine/android/api/VineParsers$VinePagedConversation;->networkType:I
return-object v3
:pswitch_data_ee
.packed-switch 0x1
:pswitch_27
:pswitch_c2
:pswitch_44
:pswitch_2b
.end packed-switch
.end method
.method private static parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePagedData;
move-result-object v0
return-object v0
.end method
.method private static parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePagedData;
.registers 11
new-instance v3, Lco/vine/android/api/VinePagedData;
invoke-direct {v3}, Lco/vine/android/api/VinePagedData;-><init>()V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, v3, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
const/4 v4, 0x0
const/4 v2, 0x0
instance-of v6, p1, Lco/vine/android/api/VineParsers$RecordListParser;
if-eqz v6, :cond_2f
move-object v2, p1
check-cast v2, Lco/vine/android/api/VineParsers$RecordListParser;
:goto_15
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
:goto_19
if-eqz v5, :cond_e7
sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v5, v6, :cond_e7
sget-object v6, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_e8
:goto_2a
:cond_2a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
goto :goto_19
:cond_2f
move-object v4, p1
check-cast v4, Lco/vine/android/api/VineParsers$RecordParser;
goto :goto_15
:pswitch_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_2a
:pswitch_37
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v6, "anchor"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
iput-object v6, v3, Lco/vine/android/api/VinePagedData;->stringAnchor:Ljava/lang/String;
goto :goto_2a
:pswitch_4a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v6, "count"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_5d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v6
iput v6, v3, Lco/vine/android/api/VinePagedData;->count:I
goto :goto_2a
:cond_5d
const-string v6, "nextPage"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v6
iput v6, v3, Lco/vine/android/api/VinePagedData;->nextPage:I
goto :goto_2a
:cond_6c
const-string v6, "previousPage"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_7b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v6
iput v6, v3, Lco/vine/android/api/VinePagedData;->previousPage:I
goto :goto_2a
:cond_7b
const-string v6, "size"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_8a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v6
iput v6, v3, Lco/vine/android/api/VinePagedData;->size:I
goto :goto_2a
:cond_8a
const-string v6, "anchor"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_99
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v6
iput-wide v6, v3, Lco/vine/android/api/VinePagedData;->anchor:J
goto :goto_2a
:cond_99
const-string v6, "title"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
iput-object v6, v3, Lco/vine/android/api/VinePagedData;->title:Ljava/lang/String;
goto :goto_2a
:pswitch_a8
const-string v6, "records"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2a
if-eqz v2, :cond_c1
iget-object v6, v3, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v2, p0, p2}, Lco/vine/android/api/VineParsers$RecordListParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto/16 :goto_2a
:cond_c1
if-nez v4, :cond_cb
new-instance v6, Ljava/lang/RuntimeException;
const-string v7, "Invalid parser."
invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v6
:cond_cb
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
:goto_cf
if-eqz v5, :cond_2a
sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v5, v6, :cond_2a
invoke-virtual {v4, p0, p2}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Parcelable;
if-eqz v1, :cond_e2
iget-object v6, v3, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_e2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
goto :goto_cf
:cond_e7
return-object v3
:pswitch_data_e8
.packed-switch 0x1
:pswitch_33
:pswitch_a8
:pswitch_4a
:pswitch_37
.end packed-switch
.end method
.method private static parsePagedInbox(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
.registers 10
const/4 v6, 0x0
new-instance v2, Lco/vine/android/api/VineParsers$VinePagedInbox;
invoke-direct {v2}, Lco/vine/android/api/VineParsers$VinePagedInbox;-><init>()V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
:goto_11
if-eqz v3, :cond_ca
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_ca
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_cc
:goto_22
:cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
goto :goto_11
:pswitch_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_22
:pswitch_2b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v4, "count"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
iput v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->count:I
goto :goto_22
:cond_3e
const-string v4, "nextPage"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_4d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
iput v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->nextPage:I
goto :goto_22
:cond_4d
const-string v4, "previousPage"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
iput v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->previousPage:I
goto :goto_22
:cond_5c
const-string v4, "size"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v4
iput v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->size:I
goto :goto_22
:cond_6b
const-string v4, "anchor"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v4
iput-wide v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->anchor:J
goto :goto_22
:pswitch_7a
const-string v4, "records"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_a2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
:goto_8a
if-eqz v3, :cond_a2
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_a2
invoke-virtual {p1, p0, v6}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineConversation;
if-eqz v1, :cond_9d
iget-object v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_9d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
goto :goto_8a
:cond_a2
const-string v4, "users"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
:goto_b2
if-eqz v3, :cond_22
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_22
invoke-virtual {p2, p0, v6}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
if-eqz v1, :cond_c5
iget-object v4, v2, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_c5
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
goto :goto_b2
:cond_ca
return-object v2
nop
:pswitch_data_cc
.packed-switch 0x1
:pswitch_27
:pswitch_7a
:pswitch_2b
.end packed-switch
.end method
.method private static parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
.registers 35
new-instance v29, Lco/vine/android/api/VinePost;
invoke-direct/range {v29 .. v29}, Lco/vine/android/api/VinePost;-><init>()V
const/4 v11, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/16 v28, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
const/4 v15, 0x0
const/16 v27, 0x0
const/16 v16, 0x0
const/16 v23, 0x0
const/16 v22, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
const-wide/16 v17, 0x0
const-wide/16 v25, 0x0
const/16 v19, 0x0
:goto_26
if-eqz v24, :cond_42b
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v24
if-eq v0, v3, :cond_42b
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v30
aget v3, v3, v30
packed-switch v3, :pswitch_data_4b8
:goto_39
:cond_39
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
goto :goto_26
:pswitch_3e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
const-string v3, "comments"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_57
sget-object v3, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
move-object/from16 v0, p0
invoke-static {v0, v3}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
goto :goto_39
:cond_57
const-string v3, "likes"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6c
sget-object v3, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
move-object/from16 v0, p0
invoke-static {v0, v3}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
goto :goto_39
:cond_6c
const-string v3, "loops"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_f0
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
:goto_78
if-eqz v24, :cond_39
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v24
if-eq v0, v3, :cond_39
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v30
aget v3, v3, v30
packed-switch v3, :pswitch_data_4c8
:goto_8b
:cond_8b
:pswitch_8b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
goto :goto_78
:pswitch_90
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_8b
:pswitch_94
const-string v3, "count"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_ac
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v30
move-wide/from16 v0, v30
double-to-long v0, v0
move-wide/from16 v17, v0
goto :goto_8b
:cond_ac
const-string v3, "velocity"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v25
goto :goto_8b
:pswitch_bf
const-string v3, "onFire"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
const/16 v30, 0x1
move/from16 v0, v30
if-ne v3, v0, :cond_da
const/16 v19, 0x1
:goto_d9
goto :goto_8b
:cond_da
const/16 v19, 0x0
goto :goto_d9
:pswitch_dd
const-string v3, "onFire"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v19
goto :goto_8b
:cond_f0
const-string v3, "user"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_10c
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;
iget v3, v3, Lco/vine/android/api/VineUser;->profileBackground:I
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
goto/16 :goto_39
:cond_10c
const-string v3, "repost"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_11e
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseRepost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineRepost;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->repost:Lco/vine/android/api/VineRepost;
goto/16 :goto_39
:cond_11e
const-string v3, "reposts"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_15d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
:goto_12a
if-eqz v24, :cond_39
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v24
if-eq v0, v3, :cond_39
sget-object v3, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v30
aget v3, v3, v30
packed-switch v3, :pswitch_data_4da
:cond_13d
:goto_13d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
goto :goto_12a
:pswitch_142
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_13d
:pswitch_146
const-string v3, "count"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
move-object/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_13d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->revinersCount:I
goto :goto_13d
:cond_15d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_39
:pswitch_162
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
const-string v3, "tags"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_178
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;
goto/16 :goto_39
:cond_178
const-string v3, "entities"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1ad
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
const/4 v13, 0x0
:goto_185
if-eqz v24, :cond_1a2
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v24
if-eq v0, v3, :cond_1a2
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
move-result-object v14
if-nez v13, :cond_198
new-instance v13, Ljava/util/ArrayList;
invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
:cond_198
if-eqz v14, :cond_19d
invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_19d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v24
goto :goto_185
:cond_1a2
if-eqz v13, :cond_39
invoke-static {v13}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V
move-object/from16 v0, v29
iput-object v13, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
goto/16 :goto_39
:cond_1ad
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_39
:pswitch_1b2
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
const-string v3, "foursquareVenueId"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1c8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
goto/16 :goto_39
:cond_1c8
const-string v3, "description"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1da
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
goto/16 :goto_39
:cond_1da
const-string v3, "created"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1f6
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
const-string v30, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
move-object/from16 v0, v30
invoke-static {v3, v0}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v30
move-wide/from16 v0, v30
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->created:J
goto/16 :goto_39
:cond_1f6
const-string v3, "location"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_208
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;
goto/16 :goto_39
:cond_208
const-string v3, "avatarUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_21a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
goto/16 :goto_39
:cond_21a
const-string v3, "videoLowURL"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_22c
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
goto/16 :goto_39
:cond_22c
const-string v3, "videoUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_23e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
goto/16 :goto_39
:cond_23e
const-string v3, "videoWebmUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_24c
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v28
goto/16 :goto_39
:cond_24c
const-string v3, "username"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_25e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
goto/16 :goto_39
:cond_25e
const-string v3, "shareUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_270
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
goto/16 :goto_39
:cond_270
const-string v3, "thumbnailUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_282
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
goto/16 :goto_39
:cond_282
const-string v3, "venueAddress"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_290
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v11
goto/16 :goto_39
:cond_290
const-string v3, "venueCategoryIconUrl"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_29e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto/16 :goto_39
:cond_29e
const-string v3, "venueCategoryId"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2ac
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto/16 :goto_39
:cond_2ac
const-string v3, "venueCategoryShortName"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2ba
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto/16 :goto_39
:cond_2ba
const-string v3, "venueCity"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2c8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
goto/16 :goto_39
:cond_2c8
const-string v3, "venueCountryCode"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2d6
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v8
goto/16 :goto_39
:cond_2d6
const-string v3, "venueName"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2e4
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v9
goto/16 :goto_39
:cond_2e4
const-string v3, "state"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2f2
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v10
goto/16 :goto_39
:cond_2f2
const-string v3, "profileBackground"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_39
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
const/16 v30, 0x2
move/from16 v0, v30
invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
const/16 v30, 0x10
move/from16 v0, v30
invoke-static {v3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v30
move-wide/from16 v0, v30
long-to-int v3, v0
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->userBackgroundColor:I
goto/16 :goto_39
:pswitch_317
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
const-string v3, "explicitContent"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_332
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
const/16 v30, 0x1
move/from16 v0, v30
if-ne v3, v0, :cond_330
const/4 v15, 0x1
:goto_32e
goto/16 :goto_39
:cond_330
const/4 v15, 0x0
goto :goto_32e
:cond_332
const-string v3, "postFlags"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_344
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->postFlags:I
goto/16 :goto_39
:cond_344
const-string v3, "postVerified"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_35d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
const/16 v30, 0x1
move/from16 v0, v30
if-ne v3, v0, :cond_35a
const/16 v20, 0x1
:goto_358
goto/16 :goto_39
:cond_35a
const/16 v20, 0x0
goto :goto_358
:cond_35d
const-string v3, "promoted"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_376
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
const/16 v30, 0x1
move/from16 v0, v30
if-ne v3, v0, :cond_373
const/16 v22, 0x1
:goto_371
goto/16 :goto_39
:cond_373
const/16 v22, 0x0
goto :goto_371
:cond_376
const-string v3, "verified"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_38f
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v3
const/16 v30, 0x1
move/from16 v0, v30
if-ne v3, v0, :cond_38c
const/16 v27, 0x1
:goto_38a
goto/16 :goto_39
:cond_38c
const/16 v27, 0x0
goto :goto_38a
:cond_38f
const-string v3, "postId"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3a3
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v30
move-wide/from16 v0, v30
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->postId:J
goto/16 :goto_39
:cond_3a3
const-string v3, "userId"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3b7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v30
move-wide/from16 v0, v30
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->userId:J
goto/16 :goto_39
:cond_3b7
const-string v3, "myRepostId"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3d9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v30
move-wide/from16 v0, v30
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->myRepostId:J
move-object/from16 v0, v29
iget-wide v0, v0, Lco/vine/android/api/VinePost;->myRepostId:J
move-wide/from16 v30, v0
const-wide/16 v32, 0x0
cmp-long v3, v30, v32
if-lez v3, :cond_39
const/16 v23, 0x1
goto/16 :goto_39
:cond_3d9
const-string v3, "private"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3f2
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v30
const-wide/16 v32, 0x1
cmp-long v3, v30, v32
if-nez v3, :cond_3ef
const/16 v21, 0x1
:goto_3ed
goto/16 :goto_39
:cond_3ef
const/16 v21, 0x0
goto :goto_3ed
:cond_3f2
const-string v3, "liked"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_39
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v30
const-wide/16 v32, 0x1
cmp-long v3, v30, v32
if-nez v3, :cond_408
const/16 v16, 0x1
:goto_406
goto/16 :goto_39
:cond_408
const/16 v16, 0x0
goto :goto_406
:pswitch_40b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
const-string v3, "liked"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_41d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v16
goto/16 :goto_39
:cond_41d
const-string v3, "revined"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_39
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v23
goto/16 :goto_39
:cond_42b
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
if-nez v3, :cond_439
if-eqz v28, :cond_439
move-object/from16 v0, v28
move-object/from16 v1, v29
iput-object v0, v1, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
:cond_439
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;
if-eqz v3, :cond_448
new-instance v3, Lco/vine/android/api/VineVenue;
invoke-direct/range {v3 .. v11}, Lco/vine/android/api/VineVenue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v29
iput-object v3, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
:cond_448
move-object/from16 v0, v29
invoke-virtual {v0, v15}, Lco/vine/android/api/VinePost;->setFlagExplicit(Z)V
move-object/from16 v0, v29
move/from16 v1, v27
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagVerified(Z)V
move-object/from16 v0, v29
move/from16 v1, v23
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagRevined(Z)V
move-object/from16 v0, v29
move/from16 v1, v16
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagLiked(Z)V
move-object/from16 v0, v29
move/from16 v1, v22
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagPromoted(Z)V
move-object/from16 v0, v29
move/from16 v1, v20
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagPostVerified(Z)V
move-object/from16 v0, v29
move/from16 v1, v21
invoke-virtual {v0, v1}, Lco/vine/android/api/VinePost;->setFlagPrivate(Z)V
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
if-eqz v3, :cond_4b4
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
iget v3, v3, Lco/vine/android/api/VinePagedData;->count:I
:goto_483
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->likesCount:I
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
if-eqz v3, :cond_4b6
move-object/from16 v0, v29
iget-object v3, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
iget v3, v3, Lco/vine/android/api/VinePagedData;->count:I
:goto_493
move-object/from16 v0, v29
iput v3, v0, Lco/vine/android/api/VinePost;->commentsCount:I
move-wide/from16 v0, v17
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->loops:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v30
move-wide/from16 v0, v30
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->lastRefresh:J
move-wide/from16 v0, v25
move-object/from16 v2, v29
iput-wide v0, v2, Lco/vine/android/api/VinePost;->velocity:D
move/from16 v0, v19
move-object/from16 v1, v29
iput-boolean v0, v1, Lco/vine/android/api/VinePost;->onFire:Z
return-object v29
:cond_4b4
const/4 v3, 0x0
goto :goto_483
:cond_4b6
const/4 v3, 0x0
goto :goto_493
:pswitch_data_4da
.packed-switch 0x1
:pswitch_142
:pswitch_142
:pswitch_146
.end packed-switch
:pswitch_data_4b8
.packed-switch 0x1
:pswitch_3e
:pswitch_162
:pswitch_317
:pswitch_1b2
:pswitch_40b
:pswitch_40b
.end packed-switch
:pswitch_data_4c8
.packed-switch 0x1
:pswitch_90
:pswitch_90
:pswitch_bf
:pswitch_8b
:pswitch_dd
:pswitch_dd
:pswitch_94
.end packed-switch
.end method
.method public static parsePrivateMessage(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessage;
.registers 30
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v28
const-wide/16 v4, 0x0
const-wide/16 v6, 0x0
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/16 v17, 0x0
const/16 v21, 0x0
const/16 v24, 0x0
const v18, 0x7fffffff
const-wide/16 v19, -0x1
const/4 v15, 0x1
:goto_1b
if-eqz v28, :cond_136
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v28
if-eq v0, v1, :cond_136
sget-object v1, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_146
:goto_2e
:cond_2e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v28
goto :goto_1b
:pswitch_33
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v1, "message"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_46
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v12
goto :goto_2e
:cond_46
const-string v1, "videoUrl"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_55
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v13
goto :goto_2e
:cond_55
const-string v1, "thumbnailUrl"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_64
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v14
goto :goto_2e
:cond_64
const-string v1, "created"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_79
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static {v1, v2}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v10
goto :goto_2e
:cond_79
const-string v1, "vanishedDate"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
invoke-static {v1, v2}, Lco/vine/android/util/DateTimeUtil;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v19
goto :goto_2e
:cond_8e
const-string v1, "inbox"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
const-string v1, "other"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
const/4 v15, 0x2
goto :goto_2e
:pswitch_a8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v1, "conversationId"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_bc
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v4
goto/16 :goto_2e
:cond_bc
const-string v1, "messageId"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_cc
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v6
goto/16 :goto_2e
:cond_cc
const-string v1, "userId"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_dc
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v8
goto/16 :goto_2e
:cond_dc
const-string v1, "maxLoops"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v18
goto/16 :goto_2e
:pswitch_ec
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v1, "vanished"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_100
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v17
goto/16 :goto_2e
:cond_100
const-string v1, "ephemeral"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v21
goto/16 :goto_2e
:pswitch_110
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v27
const-string v1, "post"
move-object/from16 v0, v27
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12c
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
move-result-object v24
move-object/from16 v0, v24
iget-object v13, v0, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
move-object/from16 v0, v24
iget-object v14, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
goto/16 :goto_2e
:cond_12c
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_2e
:pswitch_131
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_2e
:cond_136
new-instance v1, Lco/vine/android/api/VinePrivateMessage;
const-wide/16 v2, -0x1
const/16 v16, 0x0
const-wide/16 v22, 0x0
const/16 v25, 0x0
const/16 v26, 0x0
invoke-direct/range {v1 .. v26}, Lco/vine/android/api/VinePrivateMessage;-><init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJLco/vine/android/api/VinePost;ILjava/lang/String;)V
return-object v1
:pswitch_data_146
.packed-switch 0x1
:pswitch_110
:pswitch_131
:pswitch_a8
:pswitch_33
:pswitch_ec
:pswitch_ec
.end packed-switch
.end method
.method private static parsePrivateMessageResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
.registers 40
new-instance v34, Ljava/util/ArrayList;
invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
new-instance v33, Ljava/util/ArrayList;
invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V
const/16 v37, 0x0
const/16 v31, 0x0
const/16 v24, 0x1
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v35
:goto_14
if-eqz v35, :cond_1f6
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v35
if-eq v0, v4, :cond_1f6
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v35 .. v35}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v4, v4, v10
packed-switch v4, :pswitch_data_204
:pswitch_27
:goto_27
:cond_27
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v35
goto :goto_14
:pswitch_2c
const-string v4, "inbox"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_27
const-string v4, "other"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_27
const/16 v24, 0x2
goto :goto_27
:pswitch_47
const-string v4, "messages"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1d7
:goto_53
if-eqz v35, :cond_27
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v35
if-eq v0, v4, :cond_27
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v35 .. v35}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v4, v4, v10
packed-switch v4, :pswitch_data_210
:goto_66
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v35
goto :goto_53
:pswitch_6b
const/16 v23, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
const/16 v22, 0x0
const/4 v7, 0x0
const/4 v13, 0x0
const/16 v32, 0x0
const/16 v38, 0x0
const-wide/16 v25, 0x0
const-wide/16 v27, 0x0
const-wide/16 v5, -0x1
:goto_7f
if-eqz v35, :cond_17b
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v35
if-eq v0, v4, :cond_17b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v29
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v35 .. v35}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v4, v4, v10
packed-switch v4, :pswitch_data_216
:cond_96
:goto_96
:pswitch_96
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v35
goto :goto_7f
:pswitch_9b
const-string v4, "videoUrl"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_aa
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v20
goto :goto_96
:cond_aa
const-string v4, "thumbnailUrl"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_b9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v21
goto :goto_96
:cond_b9
const-string v4, "shareUrl"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_c8
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v22
goto :goto_96
:cond_c8
const-string v4, "videoWebmUrl"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_96
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v38
goto :goto_96
:pswitch_d7
const-string v4, "conversationId"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_e6
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v25
goto :goto_96
:cond_e6
const-string v4, "messageId"
move-object/from16 v0, v29
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_96
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v27
goto :goto_96
:pswitch_f5
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v30
const-string v4, "to"
move-object/from16 v0, v30
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_15b
:goto_103
if-eqz v35, :cond_96
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v35
if-eq v0, v4, :cond_96
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v36
sget-object v4, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v35 .. v35}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v4, v4, v10
packed-switch v4, :pswitch_data_222
:goto_11a
:cond_11a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v35
goto :goto_103
:pswitch_11f
const-string v4, "email"
move-object/from16 v0, v36
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_12e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v7
goto :goto_11a
:cond_12e
const-string v4, "phoneNumber"
move-object/from16 v0, v36
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_13d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v13
goto :goto_11a
:cond_13d
const-string v4, "recipientId"
move-object/from16 v0, v36
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_11a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v32
goto :goto_11a
:pswitch_14c
const-string v4, "userId"
move-object/from16 v0, v36
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_11a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
goto :goto_11a
:cond_15b
const-string v4, "error"
move-object/from16 v0, v30
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_16b
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseMessageError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
move-result-object v23
goto/16 :goto_96
:cond_16b
const-string v4, "post"
move-object/from16 v0, v30
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_96
invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
move-result-object v31
goto/16 :goto_96
:cond_17b
const-wide/16 v8, -0x1
invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_18b
invoke-static/range {v32 .. v32}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
move-result-wide v8
:cond_18b
const/4 v15, 0x0
if-eqz v7, :cond_1ac
const/4 v4, 0x0
invoke-static/range {v4 .. v9}, Lco/vine/android/api/VineRecipient;->fromEmail(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v15
:goto_193
if-nez v20, :cond_197
move-object/from16 v20, v38
:cond_197
move-object/from16 v0, v33
invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v14, Lco/vine/android/api/VinePrivateMessageResponse;
move-wide/from16 v16, v25
move-wide/from16 v18, v27
invoke-direct/range {v14 .. v24}, Lco/vine/android/api/VinePrivateMessageResponse;-><init>(Lco/vine/android/api/VineRecipient;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineError;I)V
move-object/from16 v0, v34
invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_66
:cond_1ac
if-eqz v13, :cond_1b6
const/4 v10, 0x0
move-wide v11, v5
move-wide v14, v8
invoke-static/range {v10 .. v15}, Lco/vine/android/api/VineRecipient;->fromPhone(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v15
goto :goto_193
:cond_1b6
const-wide/16 v10, 0x0
cmp-long v4, v5, v10
if-lez v4, :cond_1c7
const/4 v14, 0x0
const/16 v17, 0x0
move-wide v15, v5
move-wide/from16 v18, v8
invoke-static/range {v14 .. v19}, Lco/vine/android/api/VineRecipient;->fromUser(Ljava/lang/String;JIJ)Lco/vine/android/api/VineRecipient;
move-result-object v15
goto :goto_193
:cond_1c7
const-string v4, "No email, phone, or userId for recipient for message {}"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
aput-object v12, v10, v11
invoke-static {v4, v10}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_193
:cond_1d7
const-string v4, "users"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1ec
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-static {v0, v4}, Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v37
goto/16 :goto_27
:cond_1ec
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_27
:pswitch_1f1
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_27
:cond_1f6
new-instance v4, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
move-object/from16 v0, v34
move-object/from16 v1, v33
move-object/from16 v2, v37
move-object/from16 v3, v31
invoke-direct {v4, v0, v1, v2, v3}, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lco/vine/android/api/VinePost;)V
return-object v4
:pswitch_data_216
.packed-switch 0x1
:pswitch_f5
:pswitch_96
:pswitch_d7
:pswitch_9b
.end packed-switch
:pswitch_data_210
.packed-switch 0x1
:pswitch_6b
.end packed-switch
:pswitch_data_204
.packed-switch 0x1
:pswitch_1f1
:pswitch_47
:pswitch_27
:pswitch_2c
.end packed-switch
:pswitch_data_222
.packed-switch 0x3
:pswitch_14c
:pswitch_11f
.end packed-switch
.end method
.method public static parsePushNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_d
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineSingleNotification;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public static parseRTCConversations(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
.registers 8
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
:goto_9
if-eqz v4, :cond_38
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v5, :cond_38
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_3a
:goto_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
goto :goto_9
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseRTCParticipants(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
move-result-object v3
new-instance v5, Lco/vine/android/api/VineRTCConversation;
invoke-direct {v5, v0, v1, v3}, Lco/vine/android/api/VineRTCConversation;-><init>(JLjava/util/ArrayList;)V
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1a
:pswitch_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1a
:cond_38
return-object v2
nop
:pswitch_data_3a
.packed-switch 0x1
:pswitch_1f
:pswitch_34
.end packed-switch
.end method
.method public static parseRTCEvent(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
:goto_5
if-eqz v1, :cond_56
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_56
sget-object v2, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_58
:cond_16
:goto_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_5
:pswitch_1b
const-string v2, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_16
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
:goto_2b
if-eqz v1, :cond_16
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_16
sget-object v2, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_60
:goto_3c
:cond_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_2b
:pswitch_41
const-string v2, "conversations"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseRTCConversations(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
move-result-object v0
goto :goto_3c
:pswitch_52
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_16
:cond_56
return-object v0
nop
:pswitch_data_60
.packed-switch 0x1
:pswitch_41
.end packed-switch
:pswitch_data_58
.packed-switch 0x1
:pswitch_1b
:pswitch_52
.end packed-switch
.end method
.method public static parseRTCParticipants(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
.registers 12
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x0
const/4 v4, 0x0
const-wide/16 v5, -0x1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_d
if-eqz v9, :cond_81
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v0, :cond_81
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v0, v0, v10
packed-switch v0, :pswitch_data_82
:goto_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_d
:pswitch_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
:goto_2f
if-eqz v9, :cond_74
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v9, v0, :cond_74
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v10
aget v0, v0, v10
packed-switch v0, :pswitch_data_8a
:cond_40
:pswitch_40
:goto_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v9
goto :goto_2f
:pswitch_45
const-string v0, "last_message_id"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v5
goto :goto_40
:pswitch_56
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v7
const-string v0, "connected"
invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v3
goto :goto_40
:cond_67
const-string v0, "typing"
invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v4
goto :goto_40
:cond_74
new-instance v0, Lco/vine/android/api/VineRTCParticipant;
invoke-direct/range {v0 .. v6}, Lco/vine/android/api/VineRTCParticipant;-><init>(JZZJ)V
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1e
:pswitch_7d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1e
:cond_81
return-object v8
:pswitch_data_8a
.packed-switch 0x3
:pswitch_45
:pswitch_40
:pswitch_56
:pswitch_56
.end packed-switch
:pswitch_data_82
.packed-switch 0x1
:pswitch_23
:pswitch_7d
.end packed-switch
.end method
.method private static parseRepost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineRepost;
.registers 19
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const-wide/16 v6, 0x0
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v16
:goto_11
if-eqz v16, :cond_f1
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v16
if-eq v0, v1, :cond_f1
sget-object v1, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v17
aget v1, v1, v17
packed-switch v1, :pswitch_data_f8
:goto_24
:cond_24
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v16
goto :goto_11
:pswitch_29
const-string v1, "user"
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_c7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v16
:goto_3b
if-eqz v16, :cond_24
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v16
if-eq v0, v1, :cond_24
sget-object v1, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v17
aget v1, v1, v17
packed-switch v1, :pswitch_data_102
:goto_4e
:cond_4e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v16
goto :goto_3b
:pswitch_53
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v15
const-string v1, "description"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_64
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_4e
:cond_64
const-string v1, "avatarUrl"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_71
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_4e
:cond_71
const-string v1, "location"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_7e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_4e
:cond_7e
const-string v1, "username"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_4e
:pswitch_8b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v15
const-string v1, "verified"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9c
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v12
goto :goto_4e
:cond_9c
const-string v1, "private"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v13
goto :goto_4e
:cond_a9
const-string v1, "unflaggable"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b6
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v14
goto :goto_4e
:cond_b6
const-string v1, "userId"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v6
goto :goto_4e
:pswitch_c3
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_4e
:cond_c7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_24
:pswitch_cc
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v15
const-string v1, "repostId"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_de
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v10
goto/16 :goto_24
:cond_de
const-string v1, "postId"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v8
goto/16 :goto_24
:pswitch_ec
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_24
:cond_f1
new-instance v1, Lco/vine/android/api/VineRepost;
invoke-direct/range {v1 .. v14}, Lco/vine/android/api/VineRepost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIII)V
return-object v1
nop
:pswitch_data_f8
.packed-switch 0x1
:pswitch_29
:pswitch_ec
:pswitch_cc
.end packed-switch
:pswitch_data_102
.packed-switch 0x1
:pswitch_c3
:pswitch_c3
:pswitch_8b
:pswitch_53
.end packed-switch
.end method
.method private static parseRepostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
.registers 10
const-wide/16 v3, 0x0
const-wide/16 v1, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
:goto_8
if-eqz v5, :cond_40
sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v5, v7, :cond_40
sget-object v7, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v8
aget v7, v7, v8
packed-switch v7, :pswitch_data_4a
:goto_19
:cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
goto :goto_8
:pswitch_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v7, "repostId"
invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_2f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto :goto_19
:cond_2f
const-string v7, "postId"
invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
goto :goto_19
:pswitch_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_19
:cond_40
new-instance v6, Lco/vine/android/api/VineRepost;
invoke-direct {v6}, Lco/vine/android/api/VineRepost;-><init>()V
iput-wide v3, v6, Lco/vine/android/api/VineRepost;->repostId:J
iput-wide v1, v6, Lco/vine/android/api/VineRepost;->postId:J
return-object v6
:pswitch_data_4a
.packed-switch 0x1
:pswitch_3c
:pswitch_3c
:pswitch_1e
.end packed-switch
.end method
.method private static parseServerStatus(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/ServerStatus;
.registers 10
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v7
:goto_9
if-eqz v7, :cond_5b
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v7, v0, :cond_5b
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v8
aget v0, v0, v8
packed-switch v0, :pswitch_data_62
:goto_1a
:cond_1a
:pswitch_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v7
goto :goto_9
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1a
:pswitch_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
const-string v0, "uploadType"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_1a
:cond_34
const-string v0, "status"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_1a
:cond_41
const-string v0, "message"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_1a
:cond_4e
const-string v0, "staticTimelineUrl"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_1a
:cond_5b
new-instance v0, Lco/vine/android/api/ServerStatus;
invoke-direct/range {v0 .. v5}, Lco/vine/android/api/ServerStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
nop
:pswitch_data_62
.packed-switch 0x1
:pswitch_1f
:pswitch_1f
:pswitch_1a
:pswitch_23
.end packed-switch
.end method
.method private static parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
.registers 9
const-wide/16 v3, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v6
const/4 v1, 0x0
:goto_8
if-eqz v6, :cond_58
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v6, v2, :cond_58
sget-object v2, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v7
aget v2, v2, v7
packed-switch v2, :pswitch_data_60
:goto_19
:cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v6
goto :goto_8
:pswitch_1e
const-string v2, "userId"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto :goto_19
:pswitch_2f
const-string v2, "key"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_19
:cond_40
const-string v2, "edition"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_19
:pswitch_51
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:pswitch_54
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_19
:cond_58
new-instance v0, Lco/vine/android/api/VineLogin;
const/4 v2, 0x0
invoke-direct/range {v0 .. v5}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
return-object v0
nop
:pswitch_data_60
.packed-switch 0x1
:pswitch_51
:pswitch_54
:pswitch_1e
:pswitch_2f
.end packed-switch
.end method
.method private static parseTag(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;
.registers 5
new-instance v1, Lco/vine/android/api/VineTag;
invoke-direct {v1}, Lco/vine/android/api/VineTag;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_9
if-eqz v0, :cond_31
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v2, :cond_31
sget-object v2, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_32
:goto_1a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_9
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
goto :goto_1a
:pswitch_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v2
iput-wide v2, v1, Lco/vine/android/api/VineTag;->tagId:J
goto :goto_1a
:pswitch_2d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_1a
:cond_31
return-object v1
:pswitch_data_32
.packed-switch 0x1
:pswitch_2d
:pswitch_2d
:pswitch_26
:pswitch_1f
.end packed-switch
.end method
.method private static parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
.registers 8
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
const/4 v3, 0x0
const-wide/16 v1, 0x0
:goto_c
if-eqz v0, :cond_4b
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v5, :cond_4b
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_4c
:goto_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_c
:goto_22
:pswitch_22
if-eqz v0, :cond_42
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v5, :cond_42
sget-object v5, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_52
:goto_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_22
:pswitch_38
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_33
:pswitch_3d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
goto :goto_33
:cond_42
new-instance v5, Lco/vine/android/api/VineTag;
invoke-direct {v5, v3, v1, v2}, Lco/vine/android/api/VineTag;-><init>(Ljava/lang/String;J)V
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1d
:cond_4b
return-object v4
:pswitch_data_4c
.packed-switch 0x1
:pswitch_22
.end packed-switch
:pswitch_data_52
.packed-switch 0x3
:pswitch_3d
:pswitch_38
.end packed-switch
.end method
.method public static parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;
.registers 14
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const-wide/16 v8, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v11
:goto_d
if-eqz v11, :cond_a9
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v11, v0, :cond_a9
sget-object v0, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v11}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v12
aget v0, v0, v12
packed-switch v0, :pswitch_data_b0
:goto_1e
:cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v11
goto :goto_d
:pswitch_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v10
const-string v0, "name"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_1e
:cond_34
const-string v0, "screen_name"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_1e
:cond_41
const-string v0, "profile_image_url"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_56
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
const-string v0, "_normal"
const-string v12, "_bigger"
invoke-virtual {v6, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v6
goto :goto_1e
:cond_56
const-string v0, "url"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_63
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_1e
:cond_63
const-string v0, "description"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_70
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_1e
:cond_70
const-string v0, "location"
invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_1e
:pswitch_7d
const-string v0, "id"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v8
goto :goto_1e
:pswitch_8e
const-string v0, "default_profile_image"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v7
goto :goto_1e
:pswitch_9f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_1e
:pswitch_a4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_1e
:cond_a9
new-instance v0, Lco/vine/android/api/TwitterUser;
invoke-direct/range {v0 .. v9}, Lco/vine/android/api/TwitterUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
return-object v0
nop
:pswitch_data_b0
.packed-switch 0x1
:pswitch_9f
:pswitch_a4
:pswitch_7d
:pswitch_23
:pswitch_8e
:pswitch_8e
.end packed-switch
.end method
.method private static parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
.registers 2
const/4 v0, -0x1
invoke-static {p0, v0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;I)Lco/vine/android/api/VineUser;
move-result-object v0
return-object v0
.end method
.method private static parseUser(Lcom/fasterxml/jackson/core/JsonParser;I)Lco/vine/android/api/VineUser;
.registers 46
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/16 v21, 0x0
const/16 v20, 0x0
const/16 v26, 0x0
const/16 v30, 0x0
const-wide/16 v7, 0x0
const-wide/16 v9, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, -0x1
const/16 v17, 0x0
const/16 v29, 0x0
const/16 v18, 0x0
const/16 v19, 0x0
const/16 v22, 0x0
const/16 v23, 0x0
const/16 v24, 0x0
const/16 v37, 0x0
const/16 v38, 0x0
const/16 v25, 0x1
const/16 v27, 0x0
const/16 v28, -0x1
const/16 v36, 0x0
const/16 v40, 0x0
const/16 v31, 0x0
const/16 v32, 0x0
const/16 v33, 0x0
const-wide/16 v34, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v41
:goto_3f
if-eqz v41, :cond_34e
sget-object v42, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
move-object/from16 v0, v41
move-object/from16 v1, v42
if-eq v0, v1, :cond_34e
sget-object v42, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual/range {v41 .. v41}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v43
aget v42, v42, v43
packed-switch v42, :pswitch_data_374
:goto_54
:cond_54
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v41
goto :goto_3f
:pswitch_59
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v39
const-string v42, "avatarUrl"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_6e
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_54
:cond_6e
const-string v42, "username"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_7f
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_54
:cond_7f
const-string v42, "description"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_90
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_54
:cond_90
const-string v42, "location"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_a1
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_54
:cond_a1
const-string v42, "phoneNumber"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_b2
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v21
goto :goto_54
:cond_b2
const-string v42, "email"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_c3
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v20
goto :goto_54
:cond_c3
const-string v42, "edition"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_d4
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v26
goto :goto_54
:cond_d4
const-string v42, "profileBackground"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_f7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v42
const/16 v43, 0x2
invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v42
const/16 v43, 0x10
invoke-static/range {v42 .. v43}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v42
move-wide/from16 v0, v42
long-to-int v0, v0
move/from16 v28, v0
goto/16 :goto_54
:cond_f7
const-string v42, "section"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_54
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v30
goto/16 :goto_54
:pswitch_109
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v39
const-string v42, "userId"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_11f
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v7
goto/16 :goto_54
:cond_11f
const-string v42, "blocked"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_131
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v11
goto/16 :goto_54
:cond_131
const-string v42, "blocking"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_143
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v12
goto/16 :goto_54
:cond_143
const-string v42, "explicit"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_155
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v13
goto/16 :goto_54
:cond_155
const-string v42, "followerCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_167
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v14
goto/16 :goto_54
:cond_167
const-string v42, "followingCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_179
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v15
goto/16 :goto_54
:cond_179
const-string v42, "following"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_18b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v16
goto/16 :goto_54
:cond_18b
const-string v42, "likeCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_19d
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v17
goto/16 :goto_54
:cond_19d
const-string v42, "authoredPostCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_1af
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v29
goto/16 :goto_54
:cond_1af
const-string v42, "postCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_1c1
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v18
goto/16 :goto_54
:cond_1c1
const-string v42, "verified"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_1d3
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v19
goto/16 :goto_54
:cond_1d3
const-string v42, "followId"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_1e5
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v9
goto/16 :goto_54
:cond_1e5
const-string v42, "twitterConnected"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_1f7
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v22
goto/16 :goto_54
:cond_1f7
const-string v42, "includePromoted"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_209
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v23
goto/16 :goto_54
:cond_209
const-string v42, "private"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_21b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v24
goto/16 :goto_54
:cond_21b
const-string v42, "followApprovalPending"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_23a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_237
const/16 v37, 0x1
:goto_235
goto/16 :goto_54
:cond_237
const/16 v37, 0x0
goto :goto_235
:cond_23a
const-string v42, "followRequested"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_259
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_256
const/16 v38, 0x1
:goto_254
goto/16 :goto_54
:cond_256
const/16 v38, 0x0
goto :goto_254
:cond_259
const-string v42, "repostsEnabled"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_26b
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v25
goto/16 :goto_54
:cond_26b
const-string v42, "verifiedEmail"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_28a
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_287
const/16 v36, 0x1
:goto_285
goto/16 :goto_54
:cond_287
const/16 v36, 0x0
goto :goto_285
:cond_28a
const-string v42, "verifiedPhoneNumber"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_2a9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_2a6
const/16 v40, 0x1
:goto_2a4
goto/16 :goto_54
:cond_2a6
const/16 v40, 0x0
goto :goto_2a4
:cond_2a9
const-string v42, "sectionId"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_2bb
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result p1
goto/16 :goto_54
:cond_2bb
const-string v42, "disableAddressBook"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_2da
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_2d7
const/16 v31, 0x1
:goto_2d5
goto/16 :goto_54
:cond_2d7
const/16 v31, 0x0
goto :goto_2d5
:cond_2da
const-string v42, "acceptsOutOfNetworkConversations"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_2f9
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_2f6
const/16 v27, 0x1
:goto_2f4
goto/16 :goto_54
:cond_2f6
const/16 v27, 0x0
goto :goto_2f4
:cond_2f9
const-string v42, "hiddenEmail"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_318
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_315
const/16 v32, 0x1
:goto_313
goto/16 :goto_54
:cond_315
const/16 v32, 0x0
goto :goto_313
:cond_318
const-string v42, "hiddenPhoneNumber"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_337
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v42
const/16 v43, 0x1
move/from16 v0, v42
move/from16 v1, v43
if-ne v0, v1, :cond_334
const/16 v33, 0x1
:goto_332
goto/16 :goto_54
:cond_334
const/16 v33, 0x0
goto :goto_332
:cond_337
const-string v42, "loopCount"
move-object/from16 v0, v42
move-object/from16 v1, v39
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v42
if-eqz v42, :cond_54
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v34
goto/16 :goto_54
:pswitch_349
invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_54
:cond_34e
const-wide/16 v42, 0x0
cmp-long v42, v7, v42
if-gtz v42, :cond_356
const/4 v2, 0x0
:goto_355
:cond_355
return-object v2
:cond_356
new-instance v2, Lco/vine/android/api/VineUser;
invoke-direct/range {v2 .. v35}, Lco/vine/android/api/VineUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZIILjava/lang/String;ZZZJ)V
move/from16 v0, p1
iput v0, v2, Lco/vine/android/api/VineUser;->sectionId:I
if-eqz v37, :cond_364
invoke-virtual {v2}, Lco/vine/android/api/VineUser;->setApprovalPending()V
:cond_364
if-eqz v38, :cond_369
invoke-virtual {v2}, Lco/vine/android/api/VineUser;->setFollowRequested()V
:cond_369
if-eqz v36, :cond_36e
invoke-virtual {v2}, Lco/vine/android/api/VineUser;->setEmailVerified()V
:cond_36e
if-eqz v40, :cond_355
invoke-virtual {v2}, Lco/vine/android/api/VineUser;->setPhoneVerified()V
goto :goto_355
:pswitch_data_374
.packed-switch 0x1
:pswitch_349
:pswitch_349
:pswitch_109
:pswitch_59
.end packed-switch
.end method
.method private static parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
.registers 14
const/16 v11, 0x20
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/4 v2, -0x1
const/4 v3, 0x0
if-eqz p1, :cond_28
const-string v7, "friend_index"
const-wide/16 v8, -0x1
invoke-virtual {p1, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
const-wide/16 v7, 0x0
cmp-long v7, v0, v7
if-ltz v7, :cond_28
shr-long v7, v0, v11
long-to-int v2, v7
int-to-long v7, v2
shl-long/2addr v7, v11
sub-long v7, v0, v7
const-wide/16 v9, 0x1
add-long/2addr v7, v9
long-to-int v3, v7
:cond_28
:goto_28
if-eqz v4, :cond_5c
sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v7, :cond_5c
sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v4, v7, :cond_4c
invoke-static {p0, v2}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;I)Lco/vine/android/api/VineUser;
move-result-object v5
iget v7, v5, Lco/vine/android/api/VineUser;->sectionId:I
if-ltz v7, :cond_47
iget v7, v5, Lco/vine/android/api/VineUser;->sectionId:I
if-eq v2, v7, :cond_51
iget v7, v5, Lco/vine/android/api/VineUser;->sectionId:I
int-to-long v7, v7
shl-long/2addr v7, v11
iput-wide v7, v5, Lco/vine/android/api/VineUser;->friendIndex:J
const/4 v3, 0x1
iget v2, v5, Lco/vine/android/api/VineUser;->sectionId:I
:goto_47
:cond_47
if-eqz v5, :cond_4c
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_4c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
goto :goto_28
:cond_51
iget v7, v5, Lco/vine/android/api/VineUser;->sectionId:I
int-to-long v7, v7
shl-long/2addr v7, v11
int-to-long v9, v3
add-long/2addr v7, v9
iput-wide v7, v5, Lco/vine/android/api/VineUser;->friendIndex:J
add-int/lit8 v3, v3, 0x1
goto :goto_47
:cond_5c
return-object v6
.end method
.method private static parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
.registers 9
const-wide/16 v3, 0x0
const-wide/16 v1, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
:goto_8
if-eqz v5, :cond_40
sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v5, v6, :cond_40
sget-object v6, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_46
:goto_19
:cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v5
goto :goto_8
:pswitch_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v6, "postId"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v3
goto :goto_19
:cond_2f
const-string v6, "createdAt"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_19
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
goto :goto_19
:pswitch_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_19
:cond_40
new-instance v6, Lco/vine/android/api/VinePostResponse;
invoke-direct {v6, v3, v4, v1, v2}, Lco/vine/android/api/VinePostResponse;-><init>(JJ)V
return-object v6
:pswitch_data_46
.packed-switch 0x1
:pswitch_3c
:pswitch_3c
:pswitch_1e
.end packed-switch
.end method
.method public static parseVineResponse(Lcom/fasterxml/jackson/core/JsonParser;ILandroid/os/Bundle;)Ljava/lang/Object;
.registers 7
const/16 v1, 0x10
if-ne p1, v1, :cond_6
const/4 v1, 0x0
:goto_5
return-object v1
:cond_6
const/16 v1, 0xf
if-ne p1, v1, :cond_f
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseServerStatus(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/ServerStatus;
move-result-object v1
goto :goto_5
:cond_f
const/4 v1, 0x1
if-ne p1, v1, :cond_17
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
move-result-object v1
goto :goto_5
:cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_1b
if-eqz v0, :cond_11d
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_11d
sget-object v1, Lco/vine/android/api/VineParsers$13;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_136
:goto_2c
:cond_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_1b
:pswitch_31
const-string v1, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
packed-switch p1, :pswitch_data_140
:pswitch_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_2c
:pswitch_44
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
move-result-object v1
goto :goto_5
:pswitch_49
sget-object v1, Lco/vine/android/api/VineParsers;->USERS_PARSER:Lco/vine/android/api/VineParsers$RecordListParser;
invoke-static {p0, v1, p2}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto :goto_5
:pswitch_50
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;
move-result-object v1
goto :goto_5
:pswitch_55
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
move-result-object v1
goto :goto_5
:pswitch_5a
sget-object v1, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto :goto_5
:pswitch_61
sget-object v1, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto :goto_5
:pswitch_68
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
move-result-object v1
goto :goto_5
:pswitch_6d
sget-object v1, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto :goto_5
:pswitch_74
sget-object v1, Lco/vine/android/api/VineParsers;->GROUPED_ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto :goto_5
:pswitch_7b
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
move-result-object v1
goto :goto_5
:pswitch_80
sget-object v1, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_88
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
move-result-object v1
goto/16 :goto_5
:pswitch_8e
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parsePrivateMessageResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
move-result-object v1
goto/16 :goto_5
:pswitch_94
sget-object v1, Lco/vine/android/api/VineParsers;->TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_9c
sget-object v1, Lco/vine/android/api/VineParsers;->CHANNELS_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_a4
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseRepostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
move-result-object v1
goto/16 :goto_5
:pswitch_aa
sget-object v1, Lco/vine/android/api/VineParsers;->CONVERSATIONS_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
sget-object v2, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1, v2}, Lco/vine/android/api/VineParsers;->parsePagedInbox(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_b4
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parsePrivateMessage(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePrivateMessage;
move-result-object v1
goto/16 :goto_5
:pswitch_ba
sget-object v1, Lco/vine/android/api/VineParsers;->MESSAGES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedConversation(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_c2
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseActivityCounts(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineActivityCounts;
move-result-object v1
goto/16 :goto_5
:pswitch_c8
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLoopsSubmission(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLoopSubmissionResponse;
move-result-object v1
goto/16 :goto_5
:pswitch_ce
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseClientFlags(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineClientFlags;
move-result-object v1
goto/16 :goto_5
:pswitch_d4
sget-object v1, Lco/vine/android/api/VineParsers;->NOTIFICATION_SETTING_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$PagedDataParser;)Lco/vine/android/api/VinePagedData;
move-result-object v1
goto/16 :goto_5
:pswitch_dc
const-string v1, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
sparse-switch p1, :sswitch_data_17e
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto/16 :goto_2c
:sswitch_f0
invoke-static {p0, p2}, Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v1
goto/16 :goto_5
:sswitch_f6
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseBlockedUsers(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
move-result-object v1
goto/16 :goto_5
:sswitch_fc
invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseEditions(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
move-result-object v1
goto/16 :goto_5
:pswitch_102
const-string v1, "data"
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
packed-switch p1, :pswitch_data_18c
goto/16 :goto_2c
:pswitch_113
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
goto/16 :goto_5
:cond_11d
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unhandled parse type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:sswitch_data_17e
.sparse-switch
0x3 -> :sswitch_f0
0x11 -> :sswitch_f6
0x14 -> :sswitch_fc
.end sparse-switch
:pswitch_data_18c
.packed-switch 0x15
:pswitch_113
.end packed-switch
:pswitch_data_136
.packed-switch 0x1
:pswitch_31
:pswitch_dc
:pswitch_102
.end packed-switch
:pswitch_data_140
.packed-switch 0x2
:pswitch_44
:pswitch_49
:pswitch_40
:pswitch_55
:pswitch_5a
:pswitch_68
:pswitch_61
:pswitch_6d
:pswitch_7b
:pswitch_80
:pswitch_88
:pswitch_50
:pswitch_94
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_9c
:pswitch_a4
:pswitch_40
:pswitch_40
:pswitch_ba
:pswitch_b4
:pswitch_8e
:pswitch_aa
:pswitch_c2
:pswitch_c8
:pswitch_74
:pswitch_ce
:pswitch_d4
.end packed-switch
.end method