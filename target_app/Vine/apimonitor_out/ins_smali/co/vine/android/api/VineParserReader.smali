.class public Lco/vine/android/api/VineParserReader;
.super Ljava/lang/Object;
.source "VineParserReader.java"
.implements Lco/vine/android/network/HttpOperationReader;
.field public static final EXTRA_LAST_FRIEND_INDEX:Ljava/lang/String; = "friend_index"
.field public static final LOGGABLE:Z = false
.field public static final TAG:Ljava/lang/String; = "VineParserReader"
.field public static final TYPE_ACTIVITY:I = 0x9
.field public static final TYPE_ACTIVITY_COUNTS:I = 0x1a
.field public static final TYPE_BLOCKED_USERS:I = 0x11
.field public static final TYPE_CHANNELS:I = 0x12
.field public static final TYPE_CLIENT_FLAGS:I = 0x1d
.field public static final TYPE_CLIENT_PROFILE:I = 0xd
.field public static final TYPE_COMMENT:I = 0x7
.field public static final TYPE_COMMENTS:I = 0x6
.field public static final TYPE_CONVERSATION:I = 0x16
.field public static final TYPE_EDITIONS:I = 0x14
.field public static final TYPE_GENERAL:I = 0x1
.field public static final TYPE_GROUPED_ACTIVITY:I = 0x1c
.field public static final TYPE_INBOX:I = 0x19
.field public static final TYPE_LIKE:I = 0xa
.field public static final TYPE_LIKES:I = 0xb
.field public static final TYPE_LOGIN:I = 0x4
.field public static final TYPE_LOOPS_SUBMISSION:I = 0x1b
.field public static final TYPE_MESSAGE:I = 0x17
.field public static final TYPE_NOTIFICATION_SETTINGS:I = 0x1e
.field public static final TYPE_PENDING_NOTIF_COUNT:I = 0x15
.field public static final TYPE_POSTS:I = 0x8
.field public static final TYPE_POST_RESPONSE:I = 0xc
.field public static final TYPE_PRIVATE_MESSAGE_RESPONSE:I = 0x18
.field public static final TYPE_REVINE:I = 0x13
.field public static final TYPE_SERVER_STATUS:I = 0xf
.field public static final TYPE_SIGN_UP:I = 0x5
.field public static final TYPE_TAGS:I = 0xe
.field public static final TYPE_UPLOAD:I = 0x10
.field public static final TYPE_USER:I = 0x2
.field public static final TYPE_USERS:I = 0x3
.field private final mBundle:Landroid/os/Bundle;
.field private mParsedObject:Ljava/lang/Object;
.field private final mType:I
.method static constructor <clinit>()V
.registers 2
const-string v0, "VineParserReader"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lco/vine/android/api/VineParserReader;->LOGGABLE:Z
return-void
.end method
.method private constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lco/vine/android/api/VineParserReader;->mBundle:Landroid/os/Bundle;
iput p1, p0, Lco/vine/android/api/VineParserReader;->mType:I
return-void
.end method
.method public static createLoginReader()Lco/vine/android/api/VineParserReader;
.registers 2
new-instance v0, Lco/vine/android/api/VineParserReader;
const/4 v1, 0x4
invoke-direct {v0, v1}, Lco/vine/android/api/VineParserReader;-><init>(I)V
return-object v0
.end method
.method public static createParserReader(I)Lco/vine/android/api/VineParserReader;
.registers 2
new-instance v0, Lco/vine/android/api/VineParserReader;
invoke-direct {v0, p0}, Lco/vine/android/api/VineParserReader;-><init>(I)V
return-object v0
.end method
.method public getExtraBundle()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lco/vine/android/api/VineParserReader;->mBundle:Landroid/os/Bundle;
return-object v0
.end method
.method public getParsedObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;
return-object v0
.end method
.method public onHandleError(Lco/vine/android/network/HttpResult;)V
.registers 2
return-void
.end method
.method public readInput(IILjava/io/InputStream;)V
.registers 12
const/4 v7, 0x0
sget-boolean v4, Lco/vine/android/api/VineParserReader;->LOGGABLE:Z
if-eqz v4, :cond_4f
sget-boolean v4, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v4, :cond_4f
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/16 v4, 0x400
new-array v1, v4, [B
:goto_12
invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-le v3, v4, :cond_40
invoke-virtual {v0, v1, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
const-string v4, "VineParserReader"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Response: \'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
new-instance v6, Ljava/lang/String;
invoke-direct {v6, v1, v7, v3}, Ljava/lang/String;-><init>([BII)V
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\'"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_12
:cond_40
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
invoke-virtual {p3}, Ljava/io/InputStream;->close()V
new-instance p3, Ljava/io/ByteArrayInputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v4
invoke-direct {p3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:cond_4f
const/16 v4, 0xc8
if-ne p1, v4, :cond_72
iget v4, p0, Lco/vine/android/api/VineParserReader;->mType:I
packed-switch v4, :pswitch_data_9a
invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v2
iget v4, p0, Lco/vine/android/api/VineParserReader;->mType:I
iget-object v5, p0, Lco/vine/android/api/VineParserReader;->mBundle:Landroid/os/Bundle;
invoke-static {v2, v4, v5}, Lco/vine/android/api/VineParsers;->parseVineResponse(Lcom/fasterxml/jackson/core/JsonParser;ILandroid/os/Bundle;)Ljava/lang/Object;
move-result-object v4
iput-object v4, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;
:cond_66
:goto_66
return-void
:pswitch_67
invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v2
invoke-static {v2}, Lco/vine/android/api/VineParsers;->parseLogin(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
move-result-object v4
iput-object v4, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;
goto :goto_66
:cond_72
invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v2
invoke-static {v2}, Lco/vine/android/api/VineParsers;->parseError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
move-result-object v4
iput-object v4, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;
sget-boolean v4, Lco/vine/android/api/VineParserReader;->LOGGABLE:Z
if-eqz v4, :cond_66
const-string v4, "VineParserReader"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "ERROR: Response with "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_66
nop
:pswitch_data_9a
.packed-switch 0x4
:pswitch_67
.end packed-switch
.end method