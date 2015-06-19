.class public final Lcom/bbm/l/b/c;
.super Ljava/lang/Object;
.source "PaymentConfig.java"
.field private static h:I
.field public a:Z
.field public b:Ljava/lang/String;
.field public c:Z
.field private d:I
.field private e:J
.field private f:I
.field private g:Lcom/bbm/l/b/a;
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Lcom/bbm/l/b/c;->h:I
return-void
.end method
.method private constructor <init>(ZIJILjava/lang/String;Lcom/bbm/l/b/a;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/bbm/l/b/c;->a:Z
iput p2, p0, Lcom/bbm/l/b/c;->d:I
iput-wide p3, p0, Lcom/bbm/l/b/c;->e:J
iput p5, p0, Lcom/bbm/l/b/c;->f:I
iput-object p6, p0, Lcom/bbm/l/b/c;->b:Ljava/lang/String;
sget v0, Lcom/bbm/l/b/c;->h:I
if-eq p2, v0, :cond_17
const/4 v0, 0x1
:goto_12
iput-boolean v0, p0, Lcom/bbm/l/b/c;->c:Z
iput-object p7, p0, Lcom/bbm/l/b/c;->g:Lcom/bbm/l/b/a;
return-void
:cond_17
const/4 v0, 0x0
goto :goto_12
.end method
.method public static a()Lcom/bbm/l/b/c;
.registers 8
new-instance v0, Lcom/bbm/l/b/c;
const/4 v1, 0x0
sget v2, Lcom/bbm/l/b/c;->h:I
sget v3, Lcom/bbm/l/b/c;->h:I
int-to-long v3, v3
sget v5, Lcom/bbm/l/b/c;->h:I
const-string v6, ""
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lcom/bbm/l/b/c;-><init>(ZIJILjava/lang/String;Lcom/bbm/l/b/a;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/bbm/l/b/b;)Lcom/bbm/l/b/c;
.registers 14
const/4 v8, 0x0
const/4 v9, 0x0
:try_start_2
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "version"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
const-string v1, "cacheduration"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
const-string v1, "cachedversion"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v5
const-string v1, "bangohostedurl"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "carrierbillinginfo"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_86
invoke-static {p1}, Lcom/bbm/util/ct;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const-string v4, ":"
const-string v7, ""
invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_86
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_86
invoke-virtual {p2}, Lcom/bbm/l/b/b;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v4, "enabledcarriers"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
move v0, v9
:goto_4e
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v7
if-ge v0, v7, :cond_86
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
const-string v10, "id"
invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_79
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_79
const/4 v1, 0x1
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
invoke-static {v0}, Lcom/bbm/l/b/a;->a(Lorg/json/JSONObject;)Lcom/bbm/l/b/a;
move-result-object v7
:goto_6f
new-instance v0, Lcom/bbm/l/b/c;
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v3
invoke-direct/range {v0 .. v7}, Lcom/bbm/l/b/c;-><init>(ZIJILjava/lang/String;Lcom/bbm/l/b/a;)V
:try_end_78
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_78} :catch_7c
:goto_78
return-object v0
:cond_79
add-int/lit8 v0, v0, 0x1
goto :goto_4e
:catch_7c
move-exception v0
const-string v0, "Parsing PaymentConfig failed."
new-array v1, v9, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v8
goto :goto_78
:cond_86
move-object v7, v8
move v1, v9
goto :goto_6f
.end method