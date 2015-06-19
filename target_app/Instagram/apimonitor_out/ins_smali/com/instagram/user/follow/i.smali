.class public final Lcom/instagram/user/follow/i;
.super Lcom/instagram/api/j/b;
.source "FollowStatusUpdateRequest.java"
.field private a:Lcom/instagram/user/c/a;
.field private b:I
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V
.registers 7
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v0
invoke-static {}, Lcom/instagram/user/follow/i;->g()Lcom/instagram/api/j/a;
move-result-object v1
invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput p3, p0, Lcom/instagram/user/follow/i;->b:I
iput-object p4, p0, Lcom/instagram/user/follow/i;->a:Lcom/instagram/user/c/a;
return-void
.end method
.method private static a(I)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/instagram/user/follow/k;->a:[I
add-int/lit8 v1, p0, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18
const/4 v0, 0x0
:goto_a
return-object v0
:pswitch_b
const-string v0, "create"
goto :goto_a
:pswitch_e
const-string v0, "destroy"
goto :goto_a
:pswitch_11
const-string v0, "ignore"
goto :goto_a
:pswitch_14
const-string v0, "approve"
goto :goto_a
nop
:pswitch_data_18
.packed-switch 0x1
:pswitch_b
:pswitch_e
:pswitch_e
:pswitch_11
:pswitch_14
.end packed-switch
.end method
.method private static g()Lcom/instagram/api/j/a;
.registers 1
new-instance v0, Lcom/instagram/user/follow/j;
invoke-direct {v0}, Lcom/instagram/user/follow/j;-><init>()V
return-object v0
.end method
.method public final a(Lcom/instagram/api/j/j;)V
.registers 3
invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;
iget-object v0, p0, Lcom/instagram/user/follow/i;->a:Lcom/instagram/user/c/a;
invoke-static {v0}, Lcom/instagram/user/follow/l;->b(Lcom/instagram/user/c/a;)V
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
const-string v0, "user_id"
iget-object v1, p0, Lcom/instagram/user/follow/i;->a:Lcom/instagram/user/c/a;
invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 6
invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;
move-result-object v0
iget-object v1, p0, Lcom/instagram/user/follow/i;->a:Lcom/instagram/user/c/a;
invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
const-string v3, "friendship_status"
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V
const/4 v0, 0x0
return-object v0
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 5
const-string v0, "friendships/%s/%s/"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/instagram/user/follow/i;->b:I
invoke-static {v3}, Lcom/instagram/user/follow/i;->a(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/instagram/user/follow/i;->a:Lcom/instagram/user/c/a;
invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final c(Lcom/instagram/api/j/j;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final h()V
.registers 5
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
invoke-static {}, Lcom/instagram/common/p/b;->a()Lcom/instagram/common/p/b;
move-result-object v0
if-eqz v0, :cond_2d
new-instance v1, Lcom/instagram/common/analytics/b;
const-string v2, "follow_button_tapped"
invoke-virtual {v0}, Lcom/instagram/common/p/b;->b()Lcom/instagram/common/analytics/e;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v2, "request_type"
iget v3, p0, Lcom/instagram/user/follow/i;->b:I
invoke-static {v3}, Lcom/instagram/user/follow/i;->a(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "nav_events"
invoke-virtual {v0}, Lcom/instagram/common/p/b;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:cond_2d
return-void
.end method