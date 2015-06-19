.class public abstract Lcom/umeng/fb/model/Reply;
.super Ljava/lang/Object;
.source "Reply.java"
.implements Ljava/lang/Comparable;
.field private static final a:Ljava/lang/String; = null
.field private static final j:Ljava/lang/String; = "content"
.field private static final k:Ljava/lang/String; = "reply_id"
.field private static final l:Ljava/lang/String; = "appkey"
.field private static final m:Ljava/lang/String; = "user_id"
.field private static final n:Ljava/lang/String; = "feedback_id"
.field private static final o:Ljava/lang/String; = "type"
.field private static final p:Ljava/lang/String; = "datetime"
.field private static final q:Ljava/lang/String; = "status"
.field protected b:Ljava/lang/String;
.field protected c:Ljava/lang/String;
.field protected d:Ljava/lang/String;
.field protected e:Ljava/lang/String;
.field protected f:Ljava/lang/String;
.field protected g:Lcom/umeng/fb/model/Reply$TYPE;
.field protected h:Ljava/util/Date;
.field protected i:Lcom/umeng/fb/model/Reply$STATUS;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/fb/model/Reply;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/fb/model/Reply;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/fb/model/Reply$TYPE;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/umeng/fb/model/Reply;->b:Ljava/lang/String;
invoke-static {}, Lcom/umeng/fb/c/a;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/umeng/fb/model/Reply;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/umeng/fb/model/Reply;->e:Ljava/lang/String;
iput-object p4, p0, Lcom/umeng/fb/model/Reply;->f:Ljava/lang/String;
iput-object p5, p0, Lcom/umeng/fb/model/Reply;->g:Lcom/umeng/fb/model/Reply$TYPE;
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
sget-object v0, Lcom/umeng/fb/model/Reply$STATUS;->NOT_SENT:Lcom/umeng/fb/model/Reply$STATUS;
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->i:Lcom/umeng/fb/model/Reply$STATUS;
return-void
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "content"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->b:Ljava/lang/String;
const-string/jumbo v0, "reply_id"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->c:Ljava/lang/String;
const-string/jumbo v0, "appkey"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->d:Ljava/lang/String;
const-string/jumbo v0, "user_id"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->e:Ljava/lang/String;
const-string/jumbo v0, "feedback_id"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->f:Ljava/lang/String;
:try_start_3f
const-string/jumbo v0, "type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/umeng/fb/model/Reply$TYPE;->get(Ljava/lang/String;)Lcom/umeng/fb/model/Reply$TYPE;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->g:Lcom/umeng/fb/model/Reply$TYPE;
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_75
:try_start_4c
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "datetime"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
:goto_61
:try_end_61
.catch Ljava/text/ParseException; {:try_start_4c .. :try_end_61} :catch_80
const-string/jumbo v0, "status"
sget-object v1, Lcom/umeng/fb/model/Reply$STATUS;->NOT_SENT:Lcom/umeng/fb/model/Reply$STATUS;
invoke-virtual {v1}, Lcom/umeng/fb/model/Reply$STATUS;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/umeng/fb/model/Reply$STATUS;->get(Ljava/lang/String;)Lcom/umeng/fb/model/Reply$STATUS;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->i:Lcom/umeng/fb/model/Reply$STATUS;
return-void
:catch_75
move-exception v0
new-instance v1, Lorg/json/JSONException;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v1
:catch_80
move-exception v0
:try_start_81
new-instance v0, Ljava/text/SimpleDateFormat;
invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V
const-string/jumbo v1, "datetime"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
:try_end_93
.catch Ljava/text/ParseException; {:try_start_81 .. :try_end_93} :catch_94
goto :goto_61
:catch_94
move-exception v0
invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
sget-object v0, Lcom/umeng/fb/model/Reply;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Reply(JSONObject json): error parsing datetime from json "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "datetime"
const-string/jumbo v3, ""
invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", using current Date instead."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
goto :goto_61
.end method
.method public compareTo(Lcom/umeng/fb/model/Reply;)I
.registers 4
iget-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
iget-object v1, p1, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
move-result v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/umeng/fb/model/Reply;
invoke-virtual {p0, p1}, Lcom/umeng/fb/model/Reply;->compareTo(Lcom/umeng/fb/model/Reply;)I
move-result v0
return v0
.end method
.method public getContent()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/Reply;->b:Ljava/lang/String;
return-object v0
.end method
.method public getDatetime()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
return-object v0
.end method
.method public getStatus()Lcom/umeng/fb/model/Reply$STATUS;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/Reply;->i:Lcom/umeng/fb/model/Reply$STATUS;
return-object v0
.end method
.method public toJson()Lorg/json/JSONObject;
.registers 6
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v1, "content"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "reply_id"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "appkey"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "user_id"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "feedback_id"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "type"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->g:Lcom/umeng/fb/model/Reply$TYPE;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "datetime"
new-instance v2, Ljava/text/SimpleDateFormat;
const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iget-object v3, p0, Lcom/umeng/fb/model/Reply;->h:Ljava/util/Date;
invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "status"
iget-object v2, p0, Lcom/umeng/fb/model/Reply;->i:Lcom/umeng/fb/model/Reply$STATUS;
invoke-virtual {v2}, Lcom/umeng/fb/model/Reply$STATUS;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_57
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_57} :catch_58
:goto_57
return-object v0
:catch_58
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
const/4 v0, 0x0
goto :goto_57
.end method