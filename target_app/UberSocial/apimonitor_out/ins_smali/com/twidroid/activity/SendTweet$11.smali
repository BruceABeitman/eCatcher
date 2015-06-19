.class  Lcom/twidroid/activity/SendTweet$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/model/twitter/c;
.field final synthetic b:Z
.field final synthetic c:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/model/twitter/c;Z)V
.registers 4
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
iput-boolean p3, p0, Lcom/twidroid/activity/SendTweet$11;->b:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 22
:try_start_0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
if-eqz v1, :cond_25
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Lcom/twidroid/net/a/b/c;->a(I)V
:cond_25
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->m(Lcom/twidroid/activity/SendTweet;)Z
:try_end_2c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_2c} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_474
move-result v1
if-eqz v1, :cond_4d3
:try_start_2f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_3b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_574
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/activity/r;
invoke-virtual {v1}, Lcom/twidroid/activity/r;->b()Z
move-result v4
if-nez v4, :cond_3b
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->n(Lcom/twidroid/activity/SendTweet;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Lcom/twidroid/activity/r;->c()I
move-result v2
if-nez v2, :cond_19b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
move-object/from16 v0, p0
iget-object v6, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v2, v6}, Lcom/twidroid/d/v;->g(Landroid/content/Context;)I
move-result v2
:goto_77
invoke-static {v4, v5, v2}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;I)Lcom/twidroid/net/a/b/b;
move-result-object v2
iput-object v2, v3, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
const-string v2, "com.twidroid.SendTweet"
const-string v3, "Loading photo from background THREAD"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v2, v2, Lcom/twidroid/activity/SendTweet;->ac:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_19e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v2, v2, Lcom/twidroid/activity/SendTweet;->ac:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v15
:goto_9a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1}, Lcom/twidroid/activity/r;->j()Ljava/lang/String;
move-result-object v2
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_1a1
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_1a1
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "file://"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1a1
const/4 v2, 0x1
:goto_cc
invoke-virtual {v1}, Lcom/twidroid/activity/r;->k()Z
move-result v1
if-nez v1, :cond_1a4
if-nez v2, :cond_1a4
const/4 v1, 0x1
move/from16 v18, v1
:goto_d7
new-instance v19, Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v5, v5, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v6, v6, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v8}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v8
invoke-virtual {v8}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v8
invoke-virtual {v8}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v8
move-object/from16 v0, p0
iget-object v9, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v9}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;
move-result-object v8
move-object/from16 v0, p0
iget-object v9, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v9, v9, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;
move-object/from16 v0, p0
iget-object v10, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-boolean v10, v10, Lcom/twidroid/activity/SendTweet;->Q:Z
move-object/from16 v0, p0
iget-object v11, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v11, v11, Lcom/twidroid/activity/SendTweet;->T:D
move-object/from16 v0, p0
iget-object v13, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v13, v13, Lcom/twidroid/activity/SendTweet;->S:D
move-object/from16 v0, p0
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
move-object/from16 v16, v0
invoke-static/range {v16 .. v16}, Lcom/twidroid/activity/SendTweet;->i(Lcom/twidroid/activity/SendTweet;)J
move-result-wide v16
invoke-virtual/range {v1 .. v17}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;ZDDLjava/lang/String;J)Ljava/lang/String;
move-result-object v1
move-object/from16 v0, v19
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
if-eqz v18, :cond_143
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1, v3}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)V
:cond_143
const-string v1, "errors"
move-object/from16 v0, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_25c
const-string v1, "errors"
move-object/from16 v0, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const-string v2, "Twitter server reports about error"
if-eqz v1, :cond_1a9
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-lez v2, :cond_1a9
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "message"
const-string v3, "Twitter server reports about error"
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "code"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v1
new-instance v3, Lcom/ubermedia/net/a/a/a;
invoke-direct {v3, v2, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v3
:try_end_178
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_178} :catch_178
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2f .. :try_end_178} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_178} :catch_474
:catch_178
move-exception v1
:try_start_179
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
if-eqz v1, :cond_4cd
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v2
const-string v3, "Request aborted"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_19a
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v2
const-string v3, "Connection already shutdown"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_19a
instance-of v2, v1, Ljavax/net/ssl/SSLPeerUnverifiedException;
:try_end_198
.catch Lcom/ubermedia/net/a/a/a; {:try_start_179 .. :try_end_198} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_179 .. :try_end_198} :catch_474
if-eqz v2, :cond_4cd
:goto_19a
:cond_19a
return-void
:cond_19b
const/4 v2, 0x0
goto/16 :goto_77
:cond_19e
const/4 v15, 0x0
goto/16 :goto_9a
:cond_1a1
const/4 v2, 0x0
goto/16 :goto_cc
:cond_1a4
const/4 v1, 0x0
move/from16 v18, v1
goto/16 :goto_d7
:cond_1a9
:try_start_1a9
new-instance v1, Lcom/ubermedia/net/a/a/a;
const-string v2, "Twitter server reports about error"
invoke-direct {v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v1
:try_end_1b1
.catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1b1} :catch_178
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1a9 .. :try_end_1b1} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1b1} :catch_474
:catch_1b1
move-exception v1
:try_start_1b2
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/net/a/d;->a(Landroid/app/Activity;)Z
move-result v2
if-nez v2, :cond_1c4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;Z)Z
:cond_1c4
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v2
const/16 v3, 0xb
if-eq v2, v3, :cond_1d4
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v2
const/16 v3, 0xd
if-ne v2, v3, :cond_1dc
:cond_1d4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;Z)Z
:cond_1dc
const-string v2, "SendTweet"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "update message throws twitterexception: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v4}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/model/twitter/c;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v1
const/16 v5, 0xb
if-ne v1, v5, :cond_568
const v1, 0x7f0c002f
:goto_226
invoke-virtual {v4, v1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v2, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/activity/SendTweet$11$2;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/twidroid/activity/SendTweet$11$2;-><init>(Lcom/twidroid/activity/SendTweet$11;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_24a
:try_end_24a
.catch Lcom/ubermedia/net/a/a/a; {:try_start_1b2 .. :try_end_24a} :catch_489
:cond_24a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/activity/SendTweet$11$4;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/twidroid/activity/SendTweet$11$4;-><init>(Lcom/twidroid/activity/SendTweet$11;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_19a
:try_start_25c
:cond_25c
invoke-static/range {v19 .. v19}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
:try_end_25f
.catch Ljava/io/IOException; {:try_start_25c .. :try_end_25f} :catch_178
.catch Lcom/ubermedia/net/a/a/a; {:try_start_25c .. :try_end_25f} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_25c .. :try_end_25f} :catch_474
move-result-object v1
:goto_260
move-object v3, v1
:try_start_261
:goto_261
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;
if-eqz v1, :cond_272
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->an:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
:cond_272
const/4 v2, 0x0
const/4 v1, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v4, v4, Lcom/twidroid/activity/SendTweet;->X:Lcom/twidroid/net/a/b/b;
instance-of v4, v4, Lcom/twidroid/net/a/b/a;
if-eqz v4, :cond_56d
if-eqz v3, :cond_56d
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->r()[Lcom/ubermedia/model/twitter/MediaUrlEntity;
move-result-object v4
array-length v4, v4
if-lez v4, :cond_56d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->r()[Lcom/ubermedia/model/twitter/MediaUrlEntity;
move-result-object v2
const/4 v4, 0x0
aget-object v2, v2, v4
invoke-virtual {v2}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3}, Lcom/twidroid/model/twitter/Tweet;->r()[Lcom/ubermedia/model/twitter/MediaUrlEntity;
move-result-object v1
const/4 v4, 0x0
aget-object v1, v1, v4
invoke-virtual {v1}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->a()Ljava/lang/String;
move-result-object v1
move-object/from16 v20, v1
move-object v1, v2
move-object/from16 v2, v20
:goto_2b3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v4, v4, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
if-eqz v4, :cond_2d5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v4, v4, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z
move-result v4
if-eqz v4, :cond_2d5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
if-eqz v1, :cond_54b
:goto_2cd
invoke-static {v4, v1, v2}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "send/facebook"
invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
:cond_2d5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bP()Z
move-result v1
if-eqz v1, :cond_2e8
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v1, v7}, Lcom/twidroid/activity/SendTweet;->a(Ljava/lang/String;)V
:cond_2e8
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bO()Z
move-result v1
if-eqz v1, :cond_2fb
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-virtual {v1, v7}, Lcom/twidroid/activity/SendTweet;->c(Ljava/lang/String;)V
:cond_2fb
const-string v2, "tweet/send"
const/16 v1, 0xe
new-array v4, v1, [Ljava/lang/Object;
const/4 v1, 0x0
const-string v5, "cross-post-facebook"
aput-object v5, v4, v1
const/4 v5, 0x1
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
if-eqz v1, :cond_54e
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->ae:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_54e
const-string v1, "Yes"
:goto_31d
aput-object v1, v4, v5
const/4 v1, 0x2
const-string v5, "type"
aput-object v5, v4, v1
const/4 v5, 0x3
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_552
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;
move-result-object v1
const/4 v6, 0x0
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/activity/r;
invoke-virtual {v1}, Lcom/twidroid/activity/r;->l()Ljava/lang/Object;
move-result-object v1
:goto_346
aput-object v1, v4, v5
const/4 v1, 0x4
const-string v5, "media-count"
aput-object v5, v4, v1
const/4 v1, 0x5
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v5}, Lcom/twidroid/activity/SendTweet;->f(Lcom/twidroid/activity/SendTweet;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v1
const/4 v1, 0x6
const-string v5, "cross-post-email"
aput-object v5, v4, v1
const/4 v5, 0x7
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bO()Z
move-result v1
if-eqz v1, :cond_556
const-string v1, "Yes"
:goto_374
aput-object v1, v4, v5
const/16 v1, 0x8
const-string v5, "cross-post-gtalk"
aput-object v5, v4, v1
const/16 v5, 0x9
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bP()Z
move-result v1
if-eqz v1, :cond_55a
const-string v1, "Yes"
:goto_38c
aput-object v1, v4, v5
const/16 v1, 0xa
const-string v5, "tweet-shortener"
aput-object v5, v4, v1
const/16 v5, 0xb
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/twidroid/activity/SendTweet$11;->b:Z
if-eqz v1, :cond_55e
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->q()Ljava/lang/String;
move-result-object v1
:goto_3ac
aput-object v1, v4, v5
const/16 v1, 0xc
const-string v5, "symbol_added"
aput-object v5, v4, v1
const/16 v1, 0xd
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-boolean v5, v5, Lcom/twidroid/activity/SendTweet;->U:Z
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v4, v1
invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v2, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/activity/SendTweet;->b(Landroid/content/SharedPreferences$Editor;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v7}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/activity/SendTweet$11$1;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/twidroid/activity/SendTweet$11$1;-><init>(Lcom/twidroid/activity/SendTweet$11;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
:try_end_403
.catch Lcom/ubermedia/net/a/a/a; {:try_start_261 .. :try_end_403} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_261 .. :try_end_403} :catch_474
if-eqz v1, :cond_422
if-eqz v3, :cond_422
:try_start_407
new-instance v1, Lcom/twidroid/net/c/r;
invoke-direct {v1}, Lcom/twidroid/net/c/r;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->x:J
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twidroid/net/c/r;->a(Ljava/lang/String;JLcom/twidroid/model/twitter/c;)V
:try_end_41b
.catch Ljava/lang/Exception; {:try_start_407 .. :try_end_41b} :catch_562
.catch Lcom/ubermedia/net/a/a/a; {:try_start_407 .. :try_end_41b} :catch_1b1
:goto_41b
:try_start_41b
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v2, 0x0
iput-object v2, v1, Lcom/twidroid/activity/SendTweet;->n:Ljava/lang/String;
:cond_422
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->Z:Landroid/content/Intent;
const-string v2, "twidroyd_disable_attach_buttons"
invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_24a
sget-object v1, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;
invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
const-string v1, "none"
invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
move-result v3
if-eqz v3, :cond_446
const/4 v1, 0x1
invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
:cond_446
const-string v2, "send/promotweet"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v5, "url"
aput-object v5, v3, v4
const/4 v4, 0x1
aput-object v1, v3, v4
invoke-static {v3}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v3
invoke-static {v2, v3}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
const-string v2, "com.twidroid.SendTweet"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Flurry tracking url: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_472
.catch Lcom/ubermedia/net/a/a/a; {:try_start_41b .. :try_end_472} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_41b .. :try_end_472} :catch_474
goto/16 :goto_24a
:catch_474
move-exception v1
:try_start_475
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/net/a/d;->a(Landroid/app/Activity;)Z
move-result v1
if-nez v1, :cond_24a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;Z)Z
:try_end_487
.catch Lcom/ubermedia/net/a/a/a; {:try_start_475 .. :try_end_487} :catch_489
goto/16 :goto_24a
:catch_489
move-exception v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v2}, Lcom/twidroid/net/a/d;->a(Landroid/app/Activity;)Z
move-result v2
if-nez v2, :cond_49c
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/twidroid/activity/SendTweet;->d(Lcom/twidroid/activity/SendTweet;Z)Z
:cond_49c
const-string v2, "SendTweet"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->k:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/activity/SendTweet$11$3;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/twidroid/activity/SendTweet$11$3;-><init>(Lcom/twidroid/activity/SendTweet$11;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_24a
:try_start_4cd
:cond_4cd
new-instance v2, Lcom/ubermedia/net/a/a/a;
invoke-direct {v2, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v2
:cond_4d3
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->o(Lcom/twidroid/activity/SendTweet;)Z
move-result v1
if-nez v1, :cond_510
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-boolean v8, v1, Lcom/twidroid/activity/SendTweet;->Q:Z
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v9, v1, Lcom/twidroid/activity/SendTweet;->T:D
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v11, v1, Lcom/twidroid/activity/SendTweet;->S:D
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v13, v1, Lcom/twidroid/activity/SendTweet;->ac:J
invoke-virtual/range {v5 .. v14}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;ZDDJ)Lcom/twidroid/model/twitter/Tweet;
move-result-object v1
move-object v3, v1
goto/16 :goto_261
:cond_510
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/twidroid/activity/SendTweet$11;->a:Lcom/twidroid/model/twitter/c;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->i(Lcom/twidroid/activity/SendTweet;)J
move-result-wide v8
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-boolean v10, v1, Lcom/twidroid/activity/SendTweet;->Q:Z
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v11, v1, Lcom/twidroid/activity/SendTweet;->T:D
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v13, v1, Lcom/twidroid/activity/SendTweet;->S:D
move-object/from16 v0, p0
iget-object v1, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;
iget-wide v15, v1, Lcom/twidroid/activity/SendTweet;->ac:J
invoke-virtual/range {v5 .. v16}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;JZDDJ)Lcom/twidroid/model/twitter/Tweet;
move-result-object v1
move-object v3, v1
goto/16 :goto_261
:cond_54b
move-object v1, v7
goto/16 :goto_2cd
:cond_54e
const-string v1, "No"
goto/16 :goto_31d
:cond_552
const-string v1, "text-only"
goto/16 :goto_346
:cond_556
const-string v1, "No"
goto/16 :goto_374
:cond_55a
const-string v1, "No"
goto/16 :goto_38c
:cond_55e
const-string v1, "No"
goto/16 :goto_3ac
:catch_562
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_566
.catch Lcom/ubermedia/net/a/a/a; {:try_start_4cd .. :try_end_566} :catch_1b1
.catch Ljava/lang/Exception; {:try_start_4cd .. :try_end_566} :catch_474
goto/16 :goto_41b
:cond_568
const v1, 0x7f0c0027
goto/16 :goto_226
:cond_56d
move-object/from16 v20, v1
move-object v1, v2
move-object/from16 v2, v20
goto/16 :goto_2b3
:cond_574
move-object v1, v2
goto/16 :goto_260
.end method