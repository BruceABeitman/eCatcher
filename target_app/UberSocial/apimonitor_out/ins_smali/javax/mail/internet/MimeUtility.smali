.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final ALL:I = -0x1
.field static final ALL_ASCII:I = 0x1
.field static final MOSTLY_ASCII:I = 0x2
.field static final MOSTLY_NONASCII:I = 0x3
.field private static decodeStrict:Z
.field private static defaultJavaCharset:Ljava/lang/String;
.field private static defaultMIMECharset:Ljava/lang/String;
.field private static encodeEolStrict:Z
.field private static foldEncodedWords:Z
.field private static foldText:Z
.field private static java2mime:Ljava/util/Hashtable;
.field private static mime2java:Ljava/util/Hashtable;
.method static constructor <clinit>()V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
sput-boolean v2, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z
sput-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z
sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z
sput-boolean v2, Ljavax/mail/internet/MimeUtility;->foldText:Z
:try_start_a
const-string v3, "mail.mime.decodetext.strict"
invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_231
const-string v4, "false"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_231
move v3, v1
:goto_1b
sput-boolean v3, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z
const-string v3, "mail.mime.encodeeol.strict"
invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_234
const-string v4, "true"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_234
move v3, v2
:goto_2e
sput-boolean v3, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z
const-string v3, "mail.mime.foldencodedwords"
invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_237
const-string v4, "true"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_237
move v3, v2
:goto_41
sput-boolean v3, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z
const-string v3, "mail.mime.foldtext"
invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_23a
const-string v4, "false"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_23a
:goto_53
sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldText:Z
:goto_55
:try_end_55
.catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_55} :catch_24d
new-instance v1, Ljava/util/Hashtable;
const/16 v2, 0x28
invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V
sput-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
new-instance v1, Ljava/util/Hashtable;
const/16 v2, 0xa
invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V
sput-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
:try_start_67
const-class v1, Ljavax/mail/internet/MimeUtility;
const-string v2, "/META-INF/javamail.charset.map"
invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_6e
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_243
move-result-object v3
if-eqz v3, :cond_8b
:try_start_71
new-instance v2, Lcom/sun/mail/util/LineInputStream;
invoke-direct {v2, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_76
:try_end_76
.catchall {:try_start_71 .. :try_end_76} :catchall_23d
move-object v0, v2
check-cast v0, Lcom/sun/mail/util/LineInputStream;
move-object v1, v0
sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
move-object v0, v2
check-cast v0, Lcom/sun/mail/util/LineInputStream;
move-object v1, v0
sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
:try_end_88
.catchall {:try_start_76 .. :try_end_88} :catchall_24b
:try_start_88
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_8b
:goto_8b
:try_end_8b
.catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_248
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z
move-result v1
if-eqz v1, :cond_1ce
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_1"
const-string v3, "ISO-8859-1"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_1"
const-string v3, "ISO-8859-1"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-1"
const-string v3, "ISO-8859-1"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_2"
const-string v3, "ISO-8859-2"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_2"
const-string v3, "ISO-8859-2"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-2"
const-string v3, "ISO-8859-2"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_3"
const-string v3, "ISO-8859-3"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_3"
const-string v3, "ISO-8859-3"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-3"
const-string v3, "ISO-8859-3"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_4"
const-string v3, "ISO-8859-4"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_4"
const-string v3, "ISO-8859-4"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-4"
const-string v3, "ISO-8859-4"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_5"
const-string v3, "ISO-8859-5"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_5"
const-string v3, "ISO-8859-5"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-5"
const-string v3, "ISO-8859-5"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_6"
const-string v3, "ISO-8859-6"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_6"
const-string v3, "ISO-8859-6"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-6"
const-string v3, "ISO-8859-6"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_7"
const-string v3, "ISO-8859-7"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_7"
const-string v3, "ISO-8859-7"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-7"
const-string v3, "ISO-8859-7"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_8"
const-string v3, "ISO-8859-8"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_8"
const-string v3, "ISO-8859-8"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-8"
const-string v3, "ISO-8859-8"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "8859_9"
const-string v3, "ISO-8859-9"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859_9"
const-string v3, "ISO-8859-9"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso8859-9"
const-string v3, "ISO-8859-9"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "sjis"
const-string v3, "Shift_JIS"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "jis"
const-string v3, "ISO-2022-JP"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "iso2022jp"
const-string v3, "ISO-2022-JP"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "euc_jp"
const-string v3, "euc-jp"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "koi8_r"
const-string v3, "koi8-r"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "euc_cn"
const-string v3, "euc-cn"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "euc_tw"
const-string v3, "euc-tw"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
const-string v2, "euc_kr"
const-string v3, "euc-kr"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1ce
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z
move-result v1
if-eqz v1, :cond_230
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "iso-2022-cn"
const-string v3, "ISO2022CN"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "iso-2022-kr"
const-string v3, "ISO2022KR"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "utf-8"
const-string v3, "UTF8"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "utf8"
const-string v3, "UTF8"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "ja_jp.iso2022-7"
const-string v3, "ISO2022JP"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "ja_jp.eucjp"
const-string v3, "EUCJIS"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "euc-kr"
const-string v3, "KSC5601"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "euckr"
const-string v3, "KSC5601"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "us-ascii"
const-string v3, "ISO-8859-1"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
const-string v2, "x-us-ascii"
const-string v3, "ISO-8859-1"
invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_230
return-void
:cond_231
move v3, v2
goto/16 :goto_1b
:cond_234
move v3, v1
goto/16 :goto_2e
:cond_237
move v3, v1
goto/16 :goto_41
:cond_23a
move v1, v2
goto/16 :goto_53
:catchall_23d
move-exception v1
move-object v2, v3
:try_start_23f
:goto_23f
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_start_242
:try_end_242
.catch Ljava/lang/Exception; {:try_start_23f .. :try_end_242} :catch_246
:goto_242
throw v1
:try_end_243
.catch Ljava/lang/Exception; {:try_start_242 .. :try_end_243} :catch_243
:catch_243
move-exception v1
goto/16 :goto_8b
:catch_246
move-exception v2
goto :goto_242
:catch_248
move-exception v1
goto/16 :goto_8b
:catchall_24b
move-exception v1
goto :goto_23f
:catch_24d
move-exception v1
goto/16 :goto_55
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static checkAscii(Ljava/io/InputStream;IZ)I
.registers 20
const/4 v7, 0x0
const/4 v6, 0x0
const/16 v3, 0x1000
const/4 v9, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
sget-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z
if-eqz v1, :cond_2c
if-eqz p2, :cond_2c
const/4 v1, 0x1
move v2, v1
:goto_f
const/4 v1, 0x0
check-cast v1, [B
if-eqz p1, :cond_cb
const/4 v1, -0x1
move/from16 v0, p1
if-ne v0, v1, :cond_2f
const/16 v1, 0x1000
:goto_1b
new-array v3, v1, [B
move-object v10, v3
move v8, v9
move v11, v1
move v1, v4
move v3, v5
move v4, v6
move v5, v7
:goto_24
if-nez p1, :cond_38
:goto_26
:cond_26
if-nez p1, :cond_a5
if-eqz p2, :cond_a5
const/4 v1, 0x3
:goto_2b
return v1
:cond_2c
const/4 v1, 0x0
move v2, v1
goto :goto_f
:cond_2f
const/16 v1, 0x1000
move/from16 v0, p1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v1
goto :goto_1b
:cond_38
const/4 v6, 0x0
:try_start_39
move-object/from16 v0, p0
invoke-virtual {v0, v10, v6, v11}, Ljava/io/InputStream;->read([BII)I
:try_end_3e
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_9d
move-result v12
const/4 v6, -0x1
if-eq v12, v6, :cond_26
const/4 v7, 0x0
const/4 v6, 0x0
move v9, v8
move v14, v7
move v7, v6
move v6, v14
move v15, v3
move v3, v5
move v5, v15
move/from16 v16, v4
move v4, v1
move/from16 v1, v16
:goto_50
if-lt v7, v12, :cond_61
const/4 v6, -0x1
move/from16 v0, p1
if-eq v0, v6, :cond_c2
sub-int p1, p1, v12
move v8, v9
move v14, v5
move v5, v3
move v3, v14
move v15, v1
move v1, v4
move v4, v15
goto :goto_24
:cond_61
:try_start_61
aget-byte v8, v10, v7
and-int/lit16 v8, v8, 0xff
if-eqz v2, :cond_78
const/16 v13, 0xd
if-ne v6, v13, :cond_6f
const/16 v13, 0xa
if-ne v8, v13, :cond_77
:cond_6f
const/16 v13, 0xd
if-eq v6, v13, :cond_78
const/16 v6, 0xa
if-ne v8, v6, :cond_78
:cond_77
const/4 v4, 0x1
:cond_78
const/16 v6, 0xd
if-eq v8, v6, :cond_80
const/16 v6, 0xa
if-ne v8, v6, :cond_8b
:cond_80
const/4 v6, 0x0
:goto_81
:cond_81
invoke-static {v8}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
:try_end_84
.catch Ljava/io/IOException; {:try_start_61 .. :try_end_84} :catch_bb
move-result v9
if-eqz v9, :cond_9a
if-eqz p2, :cond_93
const/4 v1, 0x3
goto :goto_2b
:cond_8b
add-int/lit8 v6, v9, 0x1
const/16 v9, 0x3e6
if-le v6, v9, :cond_81
const/4 v5, 0x1
goto :goto_81
:cond_93
add-int/lit8 v1, v1, 0x1
:goto_95
add-int/lit8 v7, v7, 0x1
move v9, v6
move v6, v8
goto :goto_50
:cond_9a
add-int/lit8 v3, v3, 0x1
goto :goto_95
:catch_9d
move-exception v2
move v2, v3
move v3, v4
move v4, v5
:goto_a1
move v5, v4
move v4, v3
move v3, v2
goto :goto_26
:cond_a5
if-nez v4, :cond_b3
if-eqz v1, :cond_ab
const/4 v1, 0x3
goto :goto_2b
:cond_ab
if-eqz v3, :cond_b0
const/4 v1, 0x2
goto/16 :goto_2b
:cond_b0
const/4 v1, 0x1
goto/16 :goto_2b
:cond_b3
if-le v5, v4, :cond_b8
const/4 v1, 0x2
goto/16 :goto_2b
:cond_b8
const/4 v1, 0x3
goto/16 :goto_2b
:catch_bb
move-exception v2
move v2, v5
move v14, v4
move v4, v3
move v3, v1
move v1, v14
goto :goto_a1
:cond_c2
move v8, v9
move v14, v5
move v5, v3
move v3, v14
move v15, v1
move v1, v4
move v4, v15
goto/16 :goto_24
:cond_cb
move-object v10, v1
move v8, v9
move v11, v3
move v1, v4
move v3, v5
move v4, v6
move v5, v7
goto/16 :goto_24
.end method
.method static checkAscii(Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
move v2, v0
move v1, v0
:goto_7
if-lt v2, v3, :cond_d
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_c
return v0
:cond_d
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
move-result v4
if-eqz v4, :cond_1c
add-int/lit8 v0, v0, 0x1
:goto_19
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_1f
if-le v1, v0, :cond_23
const/4 v0, 0x2
goto :goto_c
:cond_23
const/4 v0, 0x3
goto :goto_c
.end method
.method static checkAscii([B)I
.registers 5
const/4 v0, 0x0
move v1, v0
move v2, v0
:goto_3
array-length v3, p0
if-lt v0, v3, :cond_a
if-nez v1, :cond_1c
const/4 v0, 0x1
:goto_9
return v0
:cond_a
aget-byte v3, p0, v0
and-int/lit16 v3, v3, 0xff
invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
move-result v3
if-eqz v3, :cond_19
add-int/lit8 v1, v1, 0x1
:goto_16
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_19
add-int/lit8 v2, v2, 0x1
goto :goto_16
:cond_1c
if-le v2, v1, :cond_20
const/4 v0, 0x2
goto :goto_9
:cond_20
const/4 v0, 0x3
goto :goto_9
.end method
.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
.registers 5
const-string v0, "base64"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V
move-object p0, v0
:cond_e
:goto_e
return-object p0
:cond_f
const-string v0, "quoted-printable"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
new-instance v0, Lcom/sun/mail/util/QPDecoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V
move-object p0, v0
goto :goto_e
:cond_1e
const-string v0, "uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_36
const-string v0, "x-uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_36
const-string v0, "x-uue"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3d
:cond_36
new-instance v0, Lcom/sun/mail/util/UUDecoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V
move-object p0, v0
goto :goto_e
:cond_3d
const-string v0, "binary"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e
const-string v0, "7bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e
const-string v0, "8bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljavax/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v5, 0x3f
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
:goto_8
const-string v2, "=?"
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v2
if-gez v2, :cond_13
:cond_10
if-nez v0, :cond_44
:goto_12
return-object p0
:cond_13
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v3, v2, 0x2
invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I
move-result v3
if-ltz v3, :cond_10
add-int/lit8 v3, v3, 0x1
invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I
move-result v3
if-ltz v3, :cond_10
const-string v4, "?="
add-int/lit8 v3, v3, 0x1
invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v3
if-ltz v3, :cond_10
add-int/lit8 v0, v3, 0x2
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:try_start_3a
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
:try_end_3d
.catch Ljavax/mail/internet/ParseException; {:try_start_3a .. :try_end_3d} :catch_56
move-result-object v0
:goto_3e
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v3, 0x2
goto :goto_8
:cond_44
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_51
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_51
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_12
:catch_56
move-exception v2
goto :goto_3e
.end method
.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v4, 0x1
const/4 v1, 0x0
const-string v0, " \t\n\r"
const-string v2, "=?"
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_e
:goto_d
return-object p0
:cond_e
new-instance v5, Ljava/util/StringTokenizer;
invoke-direct {v5, p0, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
move v0, v1
:goto_1e
invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
move-result v2
if-nez v2, :cond_2c
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_d
:cond_2c
invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v8, 0x20
if-eq v2, v8, :cond_44
const/16 v8, 0x9
if-eq v2, v8, :cond_44
const/16 v8, 0xd
if-eq v2, v8, :cond_44
const/16 v8, 0xa
if-ne v2, v8, :cond_48
:cond_44
invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_1e
:cond_48
:try_start_48
invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v0, :cond_57
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
if-lez v8, :cond_57
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
:try_end_57
.catch Ljavax/mail/internet/ParseException; {:try_start_48 .. :try_end_57} :catch_5f
:cond_57
move v0, v4
:goto_58
invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V
goto :goto_1e
:catch_5f
move-exception v2
sget-boolean v2, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z
if-nez v2, :cond_90
invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eq v2, v3, :cond_84
if-eqz v0, :cond_74
const-string v0, "=?"
invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7d
:cond_74
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_7d
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
:cond_7d
const-string v0, "?="
invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
goto :goto_58
:cond_84
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_8d
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
:cond_8d
move-object v2, v3
move v0, v1
goto :goto_58
:cond_90
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_99
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
:cond_99
move-object v2, v3
move v0, v1
goto :goto_58
.end method
.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v3, 0x3f
const/4 v4, -0x1
const-string v0, "=?"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "encoded word does not start with \"=?\": "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
const/4 v0, 0x2
invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-ne v1, v4, :cond_3c
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "encoded word does not include charset: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3c
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
add-int/lit8 v0, v1, 0x1
invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-ne v1, v4, :cond_61
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "encoded word does not include encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_61
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
const-string v3, "?="
invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v3
if-ne v3, v4, :cond_84
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "encoded word does not end with \"?=\": "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_84
invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:try_start_88
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_119
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-static {v1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const-string v1, "B"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_db
new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;
invoke-direct {v0, v4}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V
:goto_a4
invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I
move-result v1
new-array v4, v1, [B
const/4 v5, 0x0
invoke-virtual {v0, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I
move-result v1
if-gtz v1, :cond_10b
const-string v0, ""
:goto_b3
add-int/lit8 v1, v3, 0x2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v1, v4, :cond_da
add-int/lit8 v1, v3, 0x2
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
sget-boolean v3, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z
if-nez v3, :cond_c9
invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_c9
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_da
return-object v0
:cond_db
const-string v1, "Q"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_eb
new-instance v0, Lcom/sun/mail/util/QDecoderStream;
invoke-direct {v0, v4}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V
:try_end_e8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_88 .. :try_end_e8} :catch_e9
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_e8} :catch_100
.catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_e8} :catch_112
goto :goto_a4
:catch_e9
move-exception v0
throw v0
:cond_eb
:try_start_eb
new-instance v1, Ljava/io/UnsupportedEncodingException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "unknown encoding: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_100
.catch Ljava/io/UnsupportedEncodingException; {:try_start_eb .. :try_end_100} :catch_e9
.catch Ljava/io/IOException; {:try_start_eb .. :try_end_100} :catch_100
.catch Ljava/lang/IllegalArgumentException; {:try_start_eb .. :try_end_100} :catch_112
:catch_100
move-exception v0
new-instance v1, Ljavax/mail/internet/ParseException;
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_10b
:cond_10b
new-instance v0, Ljava/lang/String;
const/4 v5, 0x0
invoke-direct {v0, v4, v5, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_111
.catch Ljava/io/UnsupportedEncodingException; {:try_start_10b .. :try_end_111} :catch_e9
.catch Ljava/io/IOException; {:try_start_10b .. :try_end_111} :catch_100
.catch Ljava/lang/IllegalArgumentException; {:try_start_10b .. :try_end_111} :catch_112
goto :goto_b3
:catch_112
move-exception v0
new-instance v0, Ljava/io/UnsupportedEncodingException;
invoke-direct {v0, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_119
:cond_119
const-string v0, ""
:try_end_11b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_119 .. :try_end_11b} :catch_e9
.catch Ljava/io/IOException; {:try_start_119 .. :try_end_11b} :catch_100
.catch Ljava/lang/IllegalArgumentException; {:try_start_119 .. :try_end_11b} :catch_112
goto :goto_b3
.end method
.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
.registers 18
invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
if-eqz p1, :cond_39
invoke-static {v2}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I
move-result v1
:goto_a
if-le v1, p3, :cond_40
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
const/4 v1, 0x1
if-le v9, v1, :cond_40
const/4 v1, 0x0
div-int/lit8 v2, v9, 0x2
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
move v2, p1
move-object v3, p2
move v4, p3
move-object v5, p4
move v6, p5
move/from16 v7, p6
move-object/from16 v8, p7
invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
div-int/lit8 v1, v9, 0x2
invoke-virtual {p0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const/4 v6, 0x0
move v2, p1
move-object v3, p2
move v4, p3
move-object v5, p4
move/from16 v7, p6
move-object/from16 v8, p7
invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
:goto_38
return-void
:cond_39
move/from16 v0, p6
invoke-static {v2, v0}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I
move-result v1
goto :goto_a
:cond_40
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
if-eqz p1, :cond_74
new-instance v1, Lcom/sun/mail/util/BEncoderStream;
invoke-direct {v1, v3}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V
:goto_4c
:try_start_4c
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:goto_52
:try_end_52
.catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_8f
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
if-nez p5, :cond_63
sget-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z
if-eqz v1, :cond_7c
const-string v1, "\r\n "
move-object/from16 v0, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_63
:goto_63
move-object/from16 v0, p7
invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v1, 0x0
:goto_69
array-length v3, v2
if-lt v1, v3, :cond_84
const-string v1, "?="
move-object/from16 v0, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_38
:cond_74
new-instance v1, Lcom/sun/mail/util/QEncoderStream;
move/from16 v0, p6
invoke-direct {v1, v3, v0}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V
goto :goto_4c
:cond_7c
const-string v1, " "
move-object/from16 v0, p7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_63
:cond_84
aget-byte v3, v2, v1
int-to-char v3, v3
move-object/from16 v0, p7
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_69
:catch_8f
move-exception v1
goto :goto_52
.end method
.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
.registers 5
if-nez p1, :cond_3
:goto_2
:cond_2
return-object p0
:cond_3
const-string v0, "base64"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V
move-object p0, v0
goto :goto_2
:cond_12
const-string v0, "quoted-printable"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Lcom/sun/mail/util/QPEncoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V
move-object p0, v0
goto :goto_2
:cond_21
const-string v0, "uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
const-string v0, "x-uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
const-string v0, "x-uue"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
:cond_39
new-instance v0, Lcom/sun/mail/util/UUEncoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V
move-object p0, v0
goto :goto_2
:cond_40
const-string v0, "binary"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
const-string v0, "7bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
const-string v0, "8bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
new-instance v0, Ljavax/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.registers 6
if-nez p1, :cond_3
:goto_2
:cond_2
return-object p0
:cond_3
const-string v0, "base64"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V
move-object p0, v0
goto :goto_2
:cond_12
const-string v0, "quoted-printable"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Lcom/sun/mail/util/QPEncoderStream;
invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V
move-object p0, v0
goto :goto_2
:cond_21
const-string v0, "uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
const-string v0, "x-uuencode"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_39
const-string v0, "x-uue"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_40
:cond_39
new-instance v0, Lcom/sun/mail/util/UUEncoderStream;
invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
move-object p0, v0
goto :goto_2
:cond_40
const-string v0, "binary"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
const-string v0, "7bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
const-string v0, "8bit"
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2
new-instance v0, Ljavax/mail/MessagingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 12
const/4 v5, 0x1
invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I
move-result v0
if-ne v0, v5, :cond_8
:goto_7
return-object p0
:cond_8
if-nez p1, :cond_56
invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;
move-result-object v2
invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;
move-result-object p1
:goto_12
if-nez p2, :cond_19
const/4 v1, 0x3
if-eq v0, v1, :cond_5b
const-string p2, "Q"
:cond_19
:goto_19
const-string v0, "B"
invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5e
move v1, v5
:goto_22
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
rsub-int/lit8 v3, v0, 0x44
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "=?"
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "?"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "?"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object v0, p0
move v6, p3
invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_7
:cond_56
invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_12
:cond_5b
const-string p2, "B"
goto :goto_19
:cond_5e
const-string v0, "Q"
invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_68
const/4 v1, 0x0
goto :goto_22
:cond_68
new-instance v0, Ljava/io/UnsupportedEncodingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown transfer encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static fold(ILjava/lang/String;)Ljava/lang/String;
.registers 12
const/16 v9, 0x4c
const/16 v8, 0x20
const/16 v7, 0x9
const/4 v3, -0x1
const/4 v1, 0x0
sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z
if-nez v0, :cond_d
:goto_c
:cond_c
return-object p1
:cond_d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_13
if-gez v0, :cond_45
:cond_15
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-eq v0, v2, :cond_23
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_23
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, p0
if-le v0, v9, :cond_c
new-instance v6, Ljava/lang/StringBuffer;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, 0x4
invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V
move v0, v1
:goto_36
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v2, p0
if-gt v2, v9, :cond_58
:goto_3d
invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p1
goto :goto_c
:cond_45
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v8, :cond_55
if-eq v2, v7, :cond_55
const/16 v4, 0xd
if-eq v2, v4, :cond_55
const/16 v4, 0xa
if-ne v2, v4, :cond_15
:cond_55
add-int/lit8 v0, v0, -0x1
goto :goto_13
:cond_58
move v2, v3
move v4, v0
move v0, v1
:goto_5b
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
if-lt v0, v5, :cond_69
:cond_61
if-ne v2, v3, :cond_80
invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string p1, ""
goto :goto_3d
:cond_69
if-eq v2, v3, :cond_6f
add-int v5, p0, v0
if-gt v5, v9, :cond_61
:cond_6f
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v5
if-eq v5, v8, :cond_77
if-ne v5, v7, :cond_7c
:cond_77
if-eq v4, v8, :cond_7c
if-eq v4, v7, :cond_7c
move v2, v0
:cond_7c
add-int/lit8 v0, v0, 0x1
move v4, v5
goto :goto_5b
:cond_80
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v0, "\r\n"
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
const/4 p0, 0x1
goto :goto_36
.end method
.method public static getDefaultJavaCharset()Ljava/lang/String;
.registers 2
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
if-nez v0, :cond_26
const/4 v0, 0x0
:try_start_5
const-string v1, "mail.mime.charset"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
:try_end_a
.catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_a} :catch_43
move-result-object v0
:goto_b
if-eqz v0, :cond_1c
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1c
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
:goto_1b
return-object v0
:cond_1c
:try_start_1c
const-string v0, "file.encoding"
const-string v1, "8859_1"
invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_26} :catch_29
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
goto :goto_1b
:catch_29
move-exception v0
new-instance v0, Ljava/io/InputStreamReader;
new-instance v1, Ljavax/mail/internet/MimeUtility$1NullInputStream;
invoke-direct {v1}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V
invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
if-nez v0, :cond_26
const-string v0, "8859_1"
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
goto :goto_26
:catch_43
move-exception v1
goto :goto_b
.end method
.method static getDefaultMIMECharset()Ljava/lang/String;
.registers 1
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
if-nez v0, :cond_c
:try_start_4
const-string v0, "mail.mime.charset"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
:cond_c
:goto_c
:try_end_c
.catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_c} :catch_1d
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
if-nez v0, :cond_1a
invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
:cond_1a
sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
return-object v0
:catch_1d
move-exception v0
goto :goto_c
.end method
.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;
move-result-object v0
invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
:try_start_11
new-instance v0, Ljavax/mail/internet/ContentType;
invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_34
const-string v1, "text/*"
invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3e
new-instance v0, Ljavax/mail/internet/AsciiOutputStream;
invoke-direct {v0, v2, v2}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V
:try_start_27
invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
:try_end_2a
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_54
:goto_2a
invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I
move-result v0
packed-switch v0, :pswitch_data_58
const-string v0, "base64"
goto :goto_10
:catch_34
move-exception v0
const-string v0, "base64"
goto :goto_10
:pswitch_38
const-string v0, "7bit"
goto :goto_10
:pswitch_3b
const-string v0, "quoted-printable"
goto :goto_10
:cond_3e
new-instance v0, Ljavax/mail/internet/AsciiOutputStream;
sget-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z
invoke-direct {v0, v3, v1}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V
:try_start_45
invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
:try_end_48
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_56
:goto_48
invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I
move-result v0
if-ne v0, v3, :cond_51
const-string v0, "7bit"
goto :goto_10
:cond_51
const-string v0, "base64"
goto :goto_10
:catch_54
move-exception v1
goto :goto_2a
:catch_56
move-exception v1
goto :goto_48
:pswitch_data_58
.packed-switch 0x1
:pswitch_38
:pswitch_3b
.end packed-switch
.end method
.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
.registers 4
:try_start_0
new-instance v0, Ljavax/mail/internet/ContentType;
invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_24
move-result-object v1
const-string v2, "text/*"
invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
move-result v0
const/4 v2, -0x1
if-eqz v0, :cond_28
const/4 v0, 0x0
:goto_17
invoke-static {v1, v2, v0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I
move-result v0
packed-switch v0, :pswitch_data_32
const-string v0, "base64"
:goto_20
:try_start_20
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_23
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_30
:goto_23
return-object v0
:catch_24
move-exception v0
const-string v0, "base64"
goto :goto_23
:cond_28
const/4 v0, 0x1
goto :goto_17
:pswitch_2a
const-string v0, "7bit"
goto :goto_20
:pswitch_2d
const-string v0, "quoted-printable"
goto :goto_20
:catch_30
move-exception v1
goto :goto_23
:pswitch_data_32
.packed-switch 0x1
:pswitch_2a
:pswitch_2d
.end packed-switch
.end method
.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
.registers 7
const/4 v1, -0x1
:try_start_1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v0, p2
:goto_6
if-lt v0, v2, :cond_a
move v0, v1
:goto_9
:cond_9
return v0
:cond_a
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
:try_end_11
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_11} :catch_17
move-result v3
if-gez v3, :cond_9
add-int/lit8 v0, v0, 0x1
goto :goto_6
:catch_17
move-exception v0
move v0, v1
goto :goto_9
.end method
.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
if-eqz v0, :cond_6
if-nez p0, :cond_7
:goto_6
:cond_6
return-object p0
:cond_7
sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_6
move-object p0, v0
goto :goto_6
.end method
.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
.registers 5
:goto_0
:try_start_0
:cond_0
invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_44
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const-string v1, "--"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
const-string v1, "--"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_6
:cond_17
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_0
const-string v1, "#"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_0
new-instance v1, Ljava/util/StringTokenizer;
const-string v2, " \t"
invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_start_30
invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_41
.catch Ljava/util/NoSuchElementException; {:try_start_30 .. :try_end_41} :catch_42
goto :goto_0
:catch_42
move-exception v0
goto :goto_0
:catch_44
move-exception v0
goto :goto_6
.end method
.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
if-eqz v0, :cond_6
if-nez p0, :cond_7
:goto_6
:cond_6
return-object p0
:cond_7
sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_6
move-object p0, v0
goto :goto_6
.end method
.method static final nonascii(I)Z
.registers 2
const/16 v0, 0x7f
if-ge p0, v0, :cond_16
const/16 v0, 0x20
if-ge p0, v0, :cond_14
const/16 v0, 0xd
if-eq p0, v0, :cond_14
const/16 v0, 0xa
if-eq p0, v0, :cond_14
const/16 v0, 0x9
if-ne p0, v0, :cond_16
:cond_14
const/4 v0, 0x0
:goto_15
return v0
:cond_16
const/4 v0, 0x1
goto :goto_15
.end method
.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/16 v9, 0x5c
const/16 v8, 0xd
const/16 v7, 0xa
const/4 v2, 0x0
const/16 v6, 0x22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
move v1, v2
move v0, v2
:goto_f
if-lt v1, v3, :cond_2a
if-eqz v0, :cond_29
new-instance v0, Ljava/lang/StringBuffer;
add-int/lit8 v1, v3, 0x2
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
:cond_29
:goto_29
return-object p0
:cond_2a
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v4, v6, :cond_36
if-eq v4, v9, :cond_36
if-eq v4, v8, :cond_36
if-ne v4, v7, :cond_6e
:cond_36
new-instance v4, Ljava/lang/StringBuffer;
add-int/lit8 v0, v3, 0x3
invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v1
move v1, v2
:goto_49
if-lt v0, v3, :cond_53
invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_29
:cond_53
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v6, :cond_5f
if-eq v2, v9, :cond_5f
if-eq v2, v8, :cond_5f
if-ne v2, v7, :cond_63
:cond_5f
if-ne v2, v7, :cond_6a
if-ne v1, v8, :cond_6a
:cond_63
:goto_63
invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
move v1, v2
goto :goto_49
:cond_6a
invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_63
:cond_6e
const/16 v5, 0x20
if-lt v4, v5, :cond_7c
const/16 v5, 0x7f
if-ge v4, v5, :cond_7c
invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-ltz v4, :cond_7d
:cond_7c
const/4 v0, 0x1
:cond_7d
add-int/lit8 v1, v1, 0x1
goto :goto_f
.end method
.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/16 v8, 0x9
const/16 v7, 0x20
const/4 v6, 0x0
sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z
if-nez v0, :cond_a
:goto_9
:cond_9
return-object p0
:cond_a
const/4 v0, 0x0
:goto_b
const-string v1, "\r\n"
invoke-static {p0, v1}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
move-result v2
if-gez v2, :cond_1d
if-eqz v0, :cond_9
invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_9
:cond_1d
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v1, v2, 0x1
if-ge v1, v3, :cond_39
add-int/lit8 v4, v1, -0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0xd
if-ne v4, v5, :cond_39
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0xa
if-ne v4, v5, :cond_39
add-int/lit8 v1, v1, 0x1
:cond_39
if-eqz v2, :cond_45
add-int/lit8 v4, v2, -0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x5c
if-eq v4, v5, :cond_92
:cond_45
if-ge v1, v3, :cond_7a
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v4, v7, :cond_4f
if-ne v4, v8, :cond_7a
:cond_4f
add-int/lit8 v1, v1, 0x1
:goto_51
if-ge v1, v3, :cond_5b
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
if-eq v4, v7, :cond_77
if-eq v4, v8, :cond_77
:cond_5b
if-nez v0, :cond_66
new-instance v0, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
:cond_66
if-eqz v2, :cond_72
invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_72
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
goto :goto_b
:cond_77
add-int/lit8 v1, v1, 0x1
goto :goto_51
:cond_7a
if-nez v0, :cond_85
new-instance v0, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V
:cond_85
invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
goto/16 :goto_b
:cond_92
if-nez v0, :cond_9d
new-instance v0, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V
:cond_9d
add-int/lit8 v3, v2, -0x1
invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
goto/16 :goto_b
.end method