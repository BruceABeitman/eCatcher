.class final Lcom/bbm/meetings/activities/a;
.super Ljava/lang/Object;
.source "InviteToMeetingActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Ljava/util/ArrayList;
.field final synthetic c:Lcom/bbm/meetings/activities/InviteToMeetingActivity;
.method constructor <init>(Lcom/bbm/meetings/activities/InviteToMeetingActivity;Ljava/util/List;Ljava/util/ArrayList;)V
.registers 4
iput-object p1, p0, Lcom/bbm/meetings/activities/a;->c:Lcom/bbm/meetings/activities/InviteToMeetingActivity;
iput-object p2, p0, Lcom/bbm/meetings/activities/a;->a:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/meetings/activities/a;->b:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 9
const/4 v2, 0x1
const/4 v0, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_11
:goto_10
return v0
:cond_11
:try_start_11
iget-object v0, p0, Lcom/bbm/meetings/activities/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_17
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3}, Lcom/bbm/d/a;->u()Ljava/util/Map;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-nez v1, :cond_17
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v5
invoke-virtual {v5, v0}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;
:try_end_36
.catch Lcom/bbm/j/z; {:try_start_11 .. :try_end_36} :catch_43
move-result-object v0
:try_start_37
invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_end_3d
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_46
.catch Lcom/bbm/j/z; {:try_start_37 .. :try_end_3d} :catch_43
:try_start_3d
:goto_3d
iget-object v1, p0, Lcom/bbm/meetings/activities/a;->b:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_17
:catch_43
move-exception v0
:goto_44
move v0, v2
goto :goto_10
:catch_46
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_3d
:cond_4c
iget-object v0, p0, Lcom/bbm/meetings/activities/a;->c:Lcom/bbm/meetings/activities/InviteToMeetingActivity;
invoke-static {v0}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->a(Lcom/bbm/meetings/activities/InviteToMeetingActivity;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/meetings/activities/a;->a:Ljava/util/List;
invoke-static {v0, v1}, Lcom/bbm/d/z;->c(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/dm;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/meetings/activities/a;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_61
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_94
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_end_6d
.catch Lcom/bbm/j/z; {:try_start_3d .. :try_end_6d} :catch_43
const/4 v4, 0x1
:try_start_6e
new-array v4, v4, [Lorg/json/JSONObject;
const/4 v5, 0x0
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
const-string v7, "conversationUri"
invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v4}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v4
const-string v5, "conversation"
invoke-static {v4, v5}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-static {v0}, Lcom/bbm/util/a/j;->a(Ljava/lang/String;)V
:try_end_8e
.catch Lorg/json/JSONException; {:try_start_6e .. :try_end_8e} :catch_8f
.catch Lcom/bbm/j/z; {:try_start_6e .. :try_end_8e} :catch_43
goto :goto_61
:catch_8f
move-exception v0
:try_start_90
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_61
:cond_94
iget-object v0, p0, Lcom/bbm/meetings/activities/a;->c:Lcom/bbm/meetings/activities/InviteToMeetingActivity;
const v1, 0x7f0e0276
invoke-virtual {v0, v1}, Lcom/bbm/meetings/activities/InviteToMeetingActivity;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/meetings/activities/a;->a:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v1, v3
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/fb;->a(Ljava/lang/String;)V
:try_end_b4
.catch Lcom/bbm/j/z; {:try_start_90 .. :try_end_b4} :catch_43
goto :goto_44
.end method