.class public Lcom/twidroid/uberchannels/models/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x1
.field public static final b:I = 0x2
.field public static final c:I = 0x3
.field public static final d:I = 0x4
.field  e:Ljava/lang/String;
.field public f:I
.field public g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:Ljava/lang/String;
.field  k:J
.field  l:Ljava/lang/String;
.field  m:Lcom/twidroid/uberchannels/models/b;
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "Follow %s"
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->e:Ljava/lang/String;
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/uberchannels/models/a;->f:I
:try_start_a
const-string v0, "type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/uberchannels/models/a;->a(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/twidroid/uberchannels/models/a;->f:I
const-string v0, "tweet"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_26
const-string v0, "tweet"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->h:Ljava/lang/String;
:cond_26
const-string v0, "call_to_action"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_36
const-string v0, "call_to_action"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
:cond_36
const-string v0, "screen_name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_46
const-string v0, "screen_name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->i:Ljava/lang/String;
:cond_46
const-string v0, "name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_56
const-string v0, "name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->j:Ljava/lang/String;
:cond_56
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_66
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/uberchannels/models/a;->k:J
:cond_66
const-string v0, "title"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_76
const-string v0, "title"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
:cond_76
const-string v0, "list_name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_86
const-string v0, "list_name"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->l:Ljava/lang/String;
:cond_86
const-string v0, "body"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_96
const-string v0, "body"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->h:Ljava/lang/String;
:cond_96
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
if-nez v0, :cond_e6
iget v0, p0, Lcom/twidroid/uberchannels/models/a;->f:I
const/4 v1, 0x2
if-ne v0, v1, :cond_be
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->e:Ljava/lang/String;
const-string v1, "%s"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/uberchannels/models/a;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
:cond_be
iget v0, p0, Lcom/twidroid/uberchannels/models/a;->f:I
const/4 v1, 0x3
if-ne v0, v1, :cond_e6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
:goto_e6
:try_end_e6
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_e6} :catch_e7
:cond_e6
return-void
:catch_e7
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_e6
.end method
.method private static a(Ljava/lang/String;)I
.registers 2
const-string v0, "tweet"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const-string v0, "follow"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x2
goto :goto_9
:cond_14
const-string v0, "follow_list"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const/4 v0, 0x3
goto :goto_9
:cond_1e
const-string v0, "static_text"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
const/4 v0, 0x4
goto :goto_9
:cond_28
const/4 v0, -0x1
goto :goto_9
.end method
.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
.registers 5
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_6
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v0, v1, :cond_20
:try_start_c
new-instance v1, Lcom/twidroid/uberchannels/models/a;
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-direct {v1, v3}, Lcom/twidroid/uberchannels/models/a;-><init>(Lorg/json/JSONObject;)V
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_18
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_1b
:goto_18
add-int/lit8 v0, v0, 0x1
goto :goto_6
:catch_1b
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_18
:cond_20
return-object v2
.end method
.method public a()V
.registers 7
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Lcom/twidroid/uberchannels/models/a;->f:I
packed-switch v0, :pswitch_data_3a
goto :goto_4
:pswitch_b
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/uberchannels/models/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/twidroid/uberchannels/models/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:pswitch_15
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->i:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/uberchannels/models/a;->j:Ljava/lang/String;
iget-wide v3, p0, Lcom/twidroid/uberchannels/models/a;->k:J
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/uberchannels/models/b;->a(Ljava/lang/String;Ljava/lang/String;J)V
goto :goto_4
:pswitch_21
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->i:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/uberchannels/models/a;->j:Ljava/lang/String;
iget-wide v3, p0, Lcom/twidroid/uberchannels/models/a;->k:J
iget-object v5, p0, Lcom/twidroid/uberchannels/models/a;->l:Ljava/lang/String;
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/uberchannels/models/b;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
goto :goto_4
:pswitch_2f
iget-object v0, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
iget-object v1, p0, Lcom/twidroid/uberchannels/models/a;->g:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/uberchannels/models/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/twidroid/uberchannels/models/b;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
nop
:pswitch_data_3a
.packed-switch 0x1
:pswitch_b
:pswitch_15
:pswitch_21
:pswitch_2f
.end packed-switch
.end method
.method public a(Lcom/twidroid/uberchannels/models/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/uberchannels/models/a;->m:Lcom/twidroid/uberchannels/models/b;
return-void
.end method