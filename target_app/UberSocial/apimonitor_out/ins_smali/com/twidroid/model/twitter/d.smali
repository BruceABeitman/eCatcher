.class public Lcom/twidroid/model/twitter/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field static a:J = 0x0L
.field public static final b:Ljava/lang/String; = "subscribedlists"
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field public g:Z
.field public h:Z
.field public i:Z
.field private j:I
.field private k:I
.field private l:I
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, -0x1
sput-wide v0, Lcom/twidroid/model/twitter/d;->a:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/model/twitter/d;->g:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
iput-object p1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
iput-boolean p3, p0, Lcom/twidroid/model/twitter/d;->i:Z
invoke-virtual {p0, p4}, Lcom/twidroid/model/twitter/d;->d(I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;II)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
iput-object p1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
iput-boolean p3, p0, Lcom/twidroid/model/twitter/d;->i:Z
invoke-virtual {p0, p4}, Lcom/twidroid/model/twitter/d;->d(I)V
iput-object p5, p0, Lcom/twidroid/model/twitter/d;->f:Ljava/lang/String;
iput p6, p0, Lcom/twidroid/model/twitter/d;->k:I
iput p7, p0, Lcom/twidroid/model/twitter/d;->l:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-static {p1}, Lcom/twidroid/model/twitter/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
iput-boolean p2, p0, Lcom/twidroid/model/twitter/d;->i:Z
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "uri"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/model/twitter/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/twidroid/model/twitter/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
const-string v0, "mode"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
const-string v1, "public"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/model/twitter/d;->i:Z
invoke-virtual {p2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-virtual {p0, v0}, Lcom/twidroid/model/twitter/d;->d(I)V
const-string v0, "full_name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/d;->d:Ljava/lang/String;
const-string v0, "subscriber_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/model/twitter/d;->k:I
new-instance v0, Lcom/twidroid/model/twitter/User;
const-string v1, "user"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-direct {v0, v1}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/twitter/d;->f:Ljava/lang/String;
const-string v0, "member_count"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/model/twitter/d;->l:I
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)Ljava/util/List;
.registers 8
const/4 v1, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const-string v3, "[]"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1e
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
:cond_1e
:goto_1e
return-object v0
:try_start_1f
:cond_1f
invoke-interface {v0}, Ljava/util/List;->clear()V
const-string v2, "\"lists\":"
invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_52
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_2f
.catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2f} :catch_6c
:try_start_2f
const-string v3, "lists"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
:try_end_34
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_84
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_34} :catch_6c
move-result-object v3
:try_start_35
const-string v4, "next_cursor"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
sput-wide v4, Lcom/twidroid/model/twitter/d;->a:J
:goto_3d
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v1, v2, :cond_1e
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
new-instance v4, Lcom/twidroid/model/twitter/d;
invoke-direct {v4, v2, p1}, Lcom/twidroid/model/twitter/d;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_3d
:cond_52
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
:goto_57
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v1, v3, :cond_1e
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
new-instance v4, Lcom/twidroid/model/twitter/d;
invoke-direct {v4, v3, p1}, Lcom/twidroid/model/twitter/d;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_69
.catch Lorg/json/JSONException; {:try_start_35 .. :try_end_69} :catch_6c
add-int/lit8 v1, v1, 0x1
goto :goto_57
:catch_6c
move-exception v0
const-string v1, "Rate limit exceeded."
invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_7e
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Rate limit exceeded. Clients may not make more than 350 requests per hour."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_7e
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_84
move-exception v1
goto :goto_1e
.end method
.method public static a(Lcom/twidroid/model/twitter/d;Lcom/twidroid/model/twitter/c;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 6
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string v1, "uri"
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "listowner"
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "listname"
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "imageurl"
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_public"
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->f()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
const-string v1, "enablenotification"
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
const-string v1, "subscriber_count"
iget v2, p0, Lcom/twidroid/model/twitter/d;->k:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v1, "member_count"
iget v2, p0, Lcom/twidroid/model/twitter/d;->l:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
if-eqz p1, :cond_6c
const-string v1, "account"
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:try_start_65
:goto_65
const-string v1, "subscribedlists"
const/4 v2, 0x0
invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
:goto_6b
:try_end_6b
.catch Landroid/database/SQLException; {:try_start_65 .. :try_end_6b} :catch_77
return-void
:cond_6c
const-string v1, "account"
const/4 v2, -0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
goto :goto_65
:catch_77
move-exception v0
invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
goto :goto_6b
.end method
.method public static a(Ljava/lang/String;Lcom/twidroid/net/a/c/c;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p1, p0, v0}, Lcom/twidroid/net/a/c/c;->c(Ljava/lang/String;Z)Lcom/twidroid/model/twitter/d;
move-result-object v0
if-nez v0, :cond_8
:goto_7
return-void
:cond_8
const/4 v1, 0x0
invoke-static {v0, v1, p2}, Lcom/twidroid/model/twitter/d;->a(Lcom/twidroid/model/twitter/d;Lcom/twidroid/model/twitter/c;Landroid/database/sqlite/SQLiteDatabase;)V
goto :goto_7
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
const-string v1, "/"
const/4 v2, 0x2
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string v1, "/"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/d;->d(I)V
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/d;->i:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".png"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/twitter/d;->k:I
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/d;->f:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.twidroyd.com/tweetupintro/channels/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".png"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/twitter/d;->l:I
return-void
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
return-object v0
.end method
.method public d(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/twitter/d;->j:I
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
return-object v0
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/twidroid/model/twitter/d;
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/d;->i:Z
return v0
.end method
.method public g()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/model/twitter/d;->j()I
move-result v0
return v0
.end method
.method public h()I
.registers 2
iget v0, p0, Lcom/twidroid/model/twitter/d;->k:I
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
if-nez v0, :cond_10
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
if-nez v2, :cond_17
:goto_e
add-int/2addr v0, v1
return v0
:cond_10
iget-object v0, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_17
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_e
.end method
.method public i()I
.registers 2
iget v0, p0, Lcom/twidroid/model/twitter/d;->l:I
return v0
.end method
.method public j()I
.registers 2
iget v0, p0, Lcom/twidroid/model/twitter/d;->j:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/twitter/d;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method