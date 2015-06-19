.class public Lcom/twidroid/provider/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "new.mentions"
.field public static final b:Ljava/lang/String; = "new.tweets"
.field public static final c:Ljava/lang/String; = "new.direct"
.field public static final d:Ljava/lang/String; = "new.innercircle"
.field public static final e:Ljava/lang/String; = "jump_to_tweet"
.field public static final f:Ljava/lang/String; = "new.text"
.field public static final g:Ljava/lang/String; = "value"
.field public static final h:Ljava/lang/String; = "addvalue"
.field private static i:I
.field private static j:I
.field private static k:I
.field private static l:I
.field private static m:Ljava/lang/String;
.field private static n:J
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
sput v0, Lcom/twidroid/provider/SettingsProvider;->i:I
sput v0, Lcom/twidroid/provider/SettingsProvider;->j:I
sput v0, Lcom/twidroid/provider/SettingsProvider;->k:I
sput v0, Lcom/twidroid/provider/SettingsProvider;->l:I
const-string v0, ""
sput-object v0, Lcom/twidroid/provider/SettingsProvider;->m:Ljava/lang/String;
const-wide/16 v0, -0x1
sput-wide v0, Lcom/twidroid/provider/SettingsProvider;->n:J
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method static synthetic a()I
.registers 1
sget v0, Lcom/twidroid/provider/SettingsProvider;->i:I
return v0
.end method
.method static synthetic b()I
.registers 1
sget v0, Lcom/twidroid/provider/SettingsProvider;->j:I
return v0
.end method
.method static synthetic c()I
.registers 1
sget v0, Lcom/twidroid/provider/SettingsProvider;->k:I
return v0
.end method
.method static synthetic d()I
.registers 1
sget v0, Lcom/twidroid/provider/SettingsProvider;->l:I
return v0
.end method
.method static synthetic e()J
.registers 2
sget-wide v0, Lcom/twidroid/provider/SettingsProvider;->n:J
return-wide v0
.end method
.method static synthetic f()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/twidroid/provider/SettingsProvider;->m:Ljava/lang/String;
return-object v0
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public finalize()V
.registers 2
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->finalize()V
:goto_3
:try_end_3
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 7
const-string v0, "new.text"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
const-string v0, "new.text"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sput-object v0, Lcom/twidroid/provider/SettingsProvider;->m:Ljava/lang/String;
:cond_12
const-string v0, "new.tweets"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3a
const-string v0, "addvalue"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ea
sget v0, Lcom/twidroid/provider/SettingsProvider;->j:I
new-instance v1, Ljava/lang/Integer;
const-string v2, "value"
invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/twidroid/provider/SettingsProvider;->j:I
:cond_3a
:goto_3a
const-string v0, "new.direct"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_62
const-string v0, "addvalue"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_101
sget v0, Lcom/twidroid/provider/SettingsProvider;->k:I
new-instance v1, Ljava/lang/Integer;
const-string v2, "value"
invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/twidroid/provider/SettingsProvider;->k:I
:cond_62
:goto_62
const-string v0, "new.innercircle"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8a
const-string v0, "addvalue"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_118
sget v0, Lcom/twidroid/provider/SettingsProvider;->l:I
new-instance v1, Ljava/lang/Integer;
const-string v2, "value"
invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/twidroid/provider/SettingsProvider;->l:I
:goto_8a
:cond_8a
const-string v0, "new.mentions"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b2
const-string v0, "addvalue"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12f
sget v0, Lcom/twidroid/provider/SettingsProvider;->i:I
new-instance v1, Ljava/lang/Integer;
const-string v2, "value"
invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/2addr v0, v1
sput v0, Lcom/twidroid/provider/SettingsProvider;->i:I
:goto_b2
:cond_b2
const-string v0, "jump_to_tweet"
invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e9
new-instance v0, Ljava/lang/Long;
const-string v1, "value"
invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
sput-wide v0, Lcom/twidroid/provider/SettingsProvider;->n:J
const-string v0, "SettingsProvider"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Remember TweetID: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-wide v2, Lcom/twidroid/provider/SettingsProvider;->n:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_e9
return-object p1
:cond_ea
new-instance v0, Ljava/lang/Integer;
const-string v1, "value"
invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sput v0, Lcom/twidroid/provider/SettingsProvider;->j:I
goto/16 :goto_3a
:cond_101
new-instance v0, Ljava/lang/Integer;
const-string v1, "value"
invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sput v0, Lcom/twidroid/provider/SettingsProvider;->k:I
goto/16 :goto_62
:cond_118
new-instance v0, Ljava/lang/Integer;
const-string v1, "value"
invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sput v0, Lcom/twidroid/provider/SettingsProvider;->l:I
goto/16 :goto_8a
:cond_12f
new-instance v0, Ljava/lang/Integer;
const-string v1, "value"
invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
sput v0, Lcom/twidroid/provider/SettingsProvider;->i:I
goto/16 :goto_b2
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lcom/twidroid/provider/SettingsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/provider/SettingsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 7
new-instance v0, Lcom/twidroid/provider/a;
invoke-direct {v0, p3}, Lcom/twidroid/provider/a;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
return v0
.end method