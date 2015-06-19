.class public final Lcom/instagram/user/follow/l;
.super Ljava/lang/Object;
.source "UserFollowRequestManager.java"
.field private static a:Lcom/instagram/user/follow/l;
.field private b:Ljava/util/Map;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
return-void
.end method
.method public static a()Lcom/instagram/user/follow/l;
.registers 1
sget-object v0, Lcom/instagram/user/follow/l;->a:Lcom/instagram/user/follow/l;
if-nez v0, :cond_7
invoke-static {}, Lcom/instagram/user/follow/l;->b()V
:cond_7
sget-object v0, Lcom/instagram/user/follow/l;->a:Lcom/instagram/user/follow/l;
return-object v0
.end method
.method public static a(Lcom/instagram/user/c/a;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v1, Lcom/instagram/user/follow/m;->a:[I
invoke-virtual {v0}, Lcom/instagram/user/c/c;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_2a
:goto_f
return-void
:pswitch_10
invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
if-eq v0, v1, :cond_20
invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/e;->a:Lcom/instagram/user/c/e;
if-ne v0, v1, :cond_27
:cond_20
sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
:goto_22
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
goto :goto_f
:cond_27
sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
goto :goto_22
:pswitch_data_2a
.packed-switch 0x1
:pswitch_10
.end packed-switch
.end method
.method public static a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
invoke-virtual {p0, p1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/c;)V
invoke-virtual {p0}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v1, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;
if-eq v0, v1, :cond_32
invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;
move-result-object v0
if-eq p1, v0, :cond_32
sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
invoke-virtual {p1, v0}, Lcom/instagram/user/c/c;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p0}, Lcom/instagram/user/c/a;->m()V
invoke-virtual {p0}, Lcom/instagram/user/c/a;->D()V
:goto_32
:cond_32
sget-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
if-eq p1, v0, :cond_44
invoke-virtual {p0, p0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/a;)V
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/a;)V
:cond_44
return-void
:cond_45
sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
invoke-virtual {p1, v0}, Lcom/instagram/user/c/c;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
sget v0, Lcom/instagram/user/c/g;->c:I
if-eq p2, v0, :cond_32
invoke-virtual {p0}, Lcom/instagram/user/c/a;->n()V
invoke-virtual {p0}, Lcom/instagram/user/c/a;->D()V
goto :goto_32
.end method
.method private static declared-synchronized b()V
.registers 2
const-class v1, Lcom/instagram/user/follow/l;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/user/follow/l;->a:Lcom/instagram/user/follow/l;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_11
if-eqz v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/instagram/user/follow/l;
invoke-direct {v0}, Lcom/instagram/user/follow/l;-><init>()V
sput-object v0, Lcom/instagram/user/follow/l;->a:Lcom/instagram/user/follow/l;
:try_end_10
.catchall {:try_start_9 .. :try_end_10} :catchall_11
goto :goto_7
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static b(Lcom/instagram/user/c/a;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
:cond_e
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
return-void
.end method
.method public final a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V
.registers 8
invoke-virtual {p1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
sget-object v1, Lcom/instagram/user/follow/m;->a:[I
invoke-virtual {v0}, Lcom/instagram/user/c/c;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_4e
:goto_f
return-void
:pswitch_10
sget v0, Lcom/instagram/user/c/g;->b:I
sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
:goto_14
invoke-static {p1, v1, v0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
iget-object v1, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
monitor-enter v1
:try_start_1a
new-instance v2, Lcom/instagram/user/follow/i;
invoke-direct {v2, p2, p3, v0, p1}, Lcom/instagram/user/follow/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V
iget-object v0, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v2}, Lcom/instagram/user/follow/i;->h()V
monitor-exit v1
:try_end_2c
.catchall {:try_start_1a .. :try_end_2c} :catchall_2d
goto :goto_f
:catchall_2d
move-exception v0
monitor-exit v1
throw v0
:pswitch_30
sget v0, Lcom/instagram/user/c/g;->a:I
invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v1
sget-object v2, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
if-eq v1, v2, :cond_42
invoke-virtual {p1}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v1
sget-object v2, Lcom/instagram/user/c/e;->a:Lcom/instagram/user/c/e;
if-ne v1, v2, :cond_45
:cond_42
sget-object v1, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
goto :goto_14
:cond_45
sget-object v1, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
goto :goto_14
:pswitch_48
sget v0, Lcom/instagram/user/c/g;->c:I
sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
goto :goto_14
nop
:pswitch_data_4e
.packed-switch 0x1
:pswitch_30
:pswitch_10
:pswitch_48
.end packed-switch
.end method
.method public final a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/b;)V
.registers 8
const/4 v0, 0x0
sget-object v1, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
move v1, v0
:goto_7
:cond_7
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_74
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
const-string v3, "following"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_23
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v1
goto :goto_7
:cond_23
const-string v3, "outgoing_request"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_33
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v0
goto :goto_7
:cond_33
const-string v3, "incoming_request"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4a
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V
goto :goto_7
:cond_4a
const-string v3, "is_private"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_61
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
if-eqz v2, :cond_7
sget-object v2, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
goto :goto_7
:cond_61
const-string v3, "blocking"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_7
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z
move-result v2
invoke-virtual {p1, v2}, Lcom/instagram/user/c/a;->c(Z)V
goto :goto_7
:cond_74
invoke-virtual {p0, p1, v1, v0, p3}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V
return-void
.end method
.method public final a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "following"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v3
const-string v0, "outgoing_request"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_7b
const-string v0, "outgoing_request"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v0
if-eqz v0, :cond_7b
move v0, v1
:goto_21
const-string v4, "incoming_request"
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v4
if-eqz v4, :cond_7d
const-string v4, "incoming_request"
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v4
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v4
if-eqz v4, :cond_7d
:goto_35
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V
const-string v1, "is_private"
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v1
if-eqz v1, :cond_7f
sget-object v1, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
:goto_4d
const-string v1, "blocking"
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
if-eqz v1, :cond_62
const-string v1, "blocking"
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v1
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->c(Z)V
:cond_62
const-string v1, "direct_share_blocking"
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
if-eqz v1, :cond_77
const-string v1, "direct_share_blocking"
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z
move-result v1
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->d(Z)V
:cond_77
invoke-virtual {p0, p1, v3, v0, p3}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V
return-void
:cond_7b
move v0, v2
goto :goto_21
:cond_7d
move v1, v2
goto :goto_35
:cond_7f
sget-object v1, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->a(Lcom/instagram/user/c/e;)V
goto :goto_4d
.end method
.method public final a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V
.registers 9
if-eqz p3, :cond_27
sget-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
move-object v1, v0
:goto_5
iget-object v2, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
monitor-enter v2
:try_start_8
iget-object v0, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/follow/i;
if-eqz v0, :cond_18
if-ne v0, p4, :cond_31
:cond_18
iget-object v0, p0, Lcom/instagram/user/follow/l;->b:Ljava/util/Map;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
invoke-static {p1, v1, v0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/instagram/user/c/c;I)V
:goto_25
monitor-exit v2
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_35
return-void
:cond_27
if-eqz p2, :cond_2d
sget-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
move-object v1, v0
goto :goto_5
:cond_2d
sget-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
move-object v1, v0
goto :goto_5
:cond_31
:try_start_31
invoke-virtual {p1, v1}, Lcom/instagram/user/c/a;->b(Lcom/instagram/user/c/c;)V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_35
goto :goto_25
:catchall_35
move-exception v0
monitor-exit v2
throw v0
.end method