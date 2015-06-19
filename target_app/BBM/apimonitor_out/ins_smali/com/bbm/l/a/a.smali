.class public final Lcom/bbm/l/a/a;
.super Ljava/lang/Object;
.source "StickerConstants.java"
.field private static a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.field private static c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/bbm/l/a/a;->a:Ljava/lang/String;
sput-object v0, Lcom/bbm/l/a/a;->b:Ljava/lang/String;
sput-object v0, Lcom/bbm/l/a/a;->c:Ljava/lang/String;
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/bbm/l/a/a;->c()V
sget-object v0, Lcom/bbm/l/a/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public static b()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/bbm/l/a/a;->c()V
sget-object v0, Lcom/bbm/l/a/a;->c:Ljava/lang/String;
return-object v0
.end method
.method private static c()V
.registers 3
sget-object v0, Lcom/bbm/l/a/a;->a:Ljava/lang/String;
if-nez v0, :cond_33
invoke-static {}, Lcom/bbm/l/a/a;->d()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/l/a/a;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/bbm/l/a/a;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v0, Lcom/bbm/l/a/a;->a:Ljava/lang/String;
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_34
const-string v0, ""
:goto_21
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "stickerpacks/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/l/a/a;->c:Ljava/lang/String;
sput-object v0, Lcom/bbm/l/a/a;->b:Ljava/lang/String;
:cond_33
return-void
:cond_34
const-string v0, "/"
goto :goto_21
.end method
.method private static d()Ljava/lang/String;
.registers 8
const-string v1, "https://goods.bbm.blackberry.com/goods/v1/"
sget-boolean v0, Lcom/bbm/ae;->c:Z
if-nez v0, :cond_5d
:try_start_6
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
const-string v3, "bbmcore/bbmcore.cfg"
invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v2, Ljava/io/LineNumberReader;
new-instance v3, Ljava/io/FileReader;
invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
const-string v0, "\\[(.+)\\]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v3
const-string v0, "([^=]+)=(.+)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v4
const/4 v0, 0x0
:cond_30
:goto_30
invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_81
invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v6
invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z
move-result v7
if-eqz v7, :cond_5f
if-nez v0, :cond_81
const/4 v5, 0x1
invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
const-string v6, "stickers"
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_30
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
:try_end_58
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_58} :catch_59
goto :goto_30
:catch_59
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_5d
move-object v0, v1
:goto_5e
return-object v0
:cond_5f
if-eqz v0, :cond_30
:try_start_61
invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v5
invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
move-result v6
if-eqz v6, :cond_30
const/4 v6, 0x1
invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
const/4 v7, 0x2
invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_30
:cond_81
invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
if-eqz v0, :cond_8f
const-string v2, "urlPrefix"
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_5e
:cond_8f
const-string v0, "bbmcore/bbmcore.cfg doesn\'t have a value for urlPrefix in the [stickers] section. Add\nurlPrefix = https://bbmdev-ice-stkr.bblabs.rim.net/goods/v1/"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_97
.catch Ljava/lang/Exception; {:try_start_61 .. :try_end_97} :catch_59
move-object v0, v1
goto :goto_5e
.end method