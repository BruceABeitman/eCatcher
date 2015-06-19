.class final Lcom/bbm/ui/activities/xn;
.super Lcom/bbm/j/k;
.source "MainActivity.java"
.field final a:Lcom/bbm/ui/slidingmenu/a;
.field final b:Lcom/bbm/ui/slidingmenu/a;
.field final c:Lcom/bbm/ui/slidingmenu/a;
.field final d:Lcom/bbm/ui/slidingmenu/a;
.field final e:Lcom/bbm/ui/slidingmenu/a;
.field final f:Lcom/bbm/ui/slidingmenu/a;
.field final g:Lcom/bbm/ui/slidingmenu/a;
.field final synthetic m:Lcom/bbm/ui/activities/MainActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
.registers 10
iput-object p1, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
iput-object p2, p0, Lcom/bbm/ui/activities/xn;->a:Lcom/bbm/ui/slidingmenu/a;
iput-object p3, p0, Lcom/bbm/ui/activities/xn;->d:Lcom/bbm/ui/slidingmenu/a;
iput-object p5, p0, Lcom/bbm/ui/activities/xn;->f:Lcom/bbm/ui/slidingmenu/a;
iput-object p6, p0, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
iput-object p7, p0, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
iput-object p4, p0, Lcom/bbm/ui/activities/xn;->c:Lcom/bbm/ui/slidingmenu/a;
iput-object p8, p0, Lcom/bbm/ui/activities/xn;->g:Lcom/bbm/ui/slidingmenu/a;
return-void
.end method
.method private a(Z)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0517
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ChannelsSegmentedControl;
if-eqz v0, :cond_48
iget-object v1, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
const v2, 0x7f0a0078
if-eq v1, v2, :cond_48
iget-object v2, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
iget-object v1, v0, Lcom/bbm/ui/ChannelsSegmentedControl;->a:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I
move-result v1
if-nez v1, :cond_49
const/4 v1, 0x1
:goto_35
invoke-static {v2, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;Z)Z
iget-object v1, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->t(Lcom/bbm/ui/activities/MainActivity;)Z
move-result v1
if-eq p1, v1, :cond_48
invoke-virtual {v0, p1}, Lcom/bbm/ui/ChannelsSegmentedControl;->setNotificationSplatVisibility(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;Z)Z
:cond_48
return-void
:cond_49
const/4 v1, 0x0
goto :goto_35
.end method
.method protected final a()V
.registers 26
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewInvite"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewMessage"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewSystemMessage"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v6
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewUpdate"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v8
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewChannelUpdate"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v10
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "hasNewChannelNotification"
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v11
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "invites"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v12
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "chats"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v13
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "events"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v14
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "lists"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v15
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "pictures"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v16
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v3, "unseenUpdates"
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v3, "members"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v17
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;
move-result-object v2
sget-object v3, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;
if-eq v2, v3, :cond_218
const/4 v2, 0x1
move v3, v2
:goto_146
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
const-string v4, "adsEnabled"
invoke-virtual {v2, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v4, "value"
const/4 v7, 0x0
invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v18
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
const-string v4, "hasNewInvite"
invoke-virtual {v2, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
iget-object v2, v2, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v4, "value"
const/4 v7, 0x0
invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v2
if-eqz v2, :cond_21c
if-eqz v18, :cond_21c
const/4 v2, 0x1
move v7, v2
:goto_17e
if-nez v5, :cond_184
if-nez v13, :cond_184
if-eqz v6, :cond_220
:cond_184
const/4 v2, 0x1
move v4, v2
:goto_186
if-eqz v5, :cond_224
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v19, 0x7f0a007b
move/from16 v0, v19
if-ne v2, v0, :cond_224
if-eqz v5, :cond_1b7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v4, "hasNewMessage"
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v2, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_1b7
if-eqz v13, :cond_1cf
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
new-instance v4, Lcom/bbm/g/as;
invoke-direct {v4}, Lcom/bbm/g/as;-><init>()V
invoke-virtual {v4}, Lcom/bbm/g/as;->a()Lcom/bbm/g/as;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_1cf
if-eqz v6, :cond_1e5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v4, "hasNewSystemMessage"
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v2, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_1e5
:goto_1e5
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v2}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_1fe
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_238
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/g/q;
iget-wide v0, v2, Lcom/bbm/g/q;->h:J
move-wide/from16 v19, v0
const-wide/16 v21, 0x0
cmp-long v2, v19, v21
if-lez v2, :cond_82b
add-int/lit8 v2, v4, 0x1
:goto_216
move v4, v2
goto :goto_1fe
:cond_218
const/4 v2, 0x0
move v3, v2
goto/16 :goto_146
:cond_21c
const/4 v2, 0x0
move v7, v2
goto/16 :goto_17e
:cond_220
const/4 v2, 0x0
move v4, v2
goto/16 :goto_186
:cond_224
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->a:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v4}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v5, 0x0
invoke-virtual {v2, v5, v4}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
goto :goto_1e5
:cond_238
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->p()Lcom/bbm/j/r;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v13
add-int v2, v13, v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->a:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v6}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v19, 0x7f0d0009
const/16 v20, 0x1
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
aput-object v22, v20, v21
move/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v6, v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v5, v2}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->M()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v19
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->d:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v5}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0d000d
const/16 v20, 0x1
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v22
aput-object v22, v20, v21
move/from16 v0, v19
move-object/from16 v1, v20
invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v2}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v20
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->c:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v5}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0d000e
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v23
aput-object v23, v21, v22
move/from16 v0, v20
move-object/from16 v1, v21
invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
if-nez v14, :cond_308
if-nez v15, :cond_308
if-nez v16, :cond_308
if-eqz v17, :cond_39e
:cond_308
const/4 v2, 0x1
move v6, v2
:goto_30a
if-nez v8, :cond_310
if-nez v6, :cond_310
if-eqz v10, :cond_3a2
:cond_310
const/4 v2, 0x1
move v5, v2
:goto_312
if-eqz v5, :cond_3a6
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v14, 0x7f0a0084
if-ne v2, v14, :cond_3a6
if-eqz v8, :cond_341
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v5, "hasNewUpdate"
const/4 v8, 0x0
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-virtual {v2, v5, v8}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_341
if-eqz v10, :cond_357
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v5, "hasNewChannelUpdate"
const/4 v8, 0x0
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
invoke-virtual {v2, v5, v8}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_357
if-eqz v6, :cond_36b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
new-instance v5, Lcom/bbm/g/bd;
invoke-direct {v5}, Lcom/bbm/g/bd;-><init>()V
invoke-virtual {v2, v5}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_36b
:cond_36b
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->G()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->b()Z
move-result v6
if-nez v6, :cond_3ba
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_38a
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_3ba
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/fy;
iget-boolean v2, v2, Lcom/bbm/d/fy;->l:Z
if-eqz v2, :cond_828
add-int/lit8 v2, v5, 0x1
:goto_39c
move v5, v2
goto :goto_38a
:cond_39e
const/4 v2, 0x0
move v6, v2
goto/16 :goto_30a
:cond_3a2
const/4 v2, 0x0
move v5, v2
goto/16 :goto_312
:cond_3a6
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v6, 0x3
invoke-virtual {v2, v6, v5}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
goto :goto_36b
:cond_3ba
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->F()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_3d3
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_40b
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/fz;
move-object/from16 v0, p0
iget-object v10, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v10}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v10
iget-object v10, v10, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v10}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v10
iget-object v14, v2, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_825
iget-boolean v10, v2, Lcom/bbm/d/fz;->d:Z
if-nez v10, :cond_825
iget-object v10, v2, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v14, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
if-ne v10, v14, :cond_407
iget-object v2, v2, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_825
:cond_407
add-int/lit8 v2, v6, 0x1
:goto_409
move v6, v2
goto :goto_3d3
:cond_40b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v8, "unseenUpdates"
invoke-virtual {v2, v8}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v8, "updates"
const/4 v10, 0x0
invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v10
add-int v2, v6, v10
add-int v14, v2, v5
if-gtz v14, :cond_441
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
const/4 v5, 0x0
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v5, 0x3
const/4 v8, 0x0
invoke-virtual {v2, v5, v8}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
:cond_441
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v5}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v8, 0x7f0d000c
const/4 v15, 0x1
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
aput-object v17, v15, v16
invoke-virtual {v5, v8, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
if-nez v9, :cond_468
if-nez v12, :cond_468
if-eqz v7, :cond_604
:cond_468
const/4 v2, 0x1
move v8, v2
:goto_46a
if-eqz v8, :cond_608
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v5, 0x7f0a007f
if-ne v2, v5, :cond_608
if-eqz v7, :cond_499
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
const-string v5, "hasNewInvite"
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
invoke-virtual {v2, v5, v7}, Lcom/bbm/b/q;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_499
if-eqz v9, :cond_4af
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v5, "hasNewInvite"
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
invoke-virtual {v2, v5, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:cond_4af
if-eqz v12, :cond_4c7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
new-instance v5, Lcom/bbm/g/as;
invoke-direct {v5}, Lcom/bbm/g/as;-><init>()V
invoke-virtual {v5}, Lcom/bbm/g/as;->c()Lcom/bbm/g/as;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_4c7
:goto_4c7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->r()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v2}, Lcom/bbm/g/am;->c()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v7
const/4 v2, 0x0
if-eqz v18, :cond_512
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
invoke-virtual {v2}, Lcom/bbm/b/q;->b()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
:cond_512
add-int/2addr v5, v7
add-int/2addr v2, v5
if-lez v2, :cond_611
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
const/4 v5, 0x1
iput v5, v2, Lcom/bbm/ui/activities/MainActivity;->c:I
:goto_51d
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->q()Lcom/bbm/j/r;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v5, "unseenUpdates"
invoke-virtual {v2, v5}, Lcom/bbm/g/am;->u(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v2
const-string v5, "inviteCount"
const/4 v7, 0x0
invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v12
const/4 v2, 0x0
if-eqz v18, :cond_56b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
invoke-virtual {v2}, Lcom/bbm/b/q;->c()Lcom/bbm/j/r;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
:cond_56b
add-int v5, v9, v12
add-int v15, v5, v2
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->f:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v5}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v7, 0x7f0d000b
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v16, v0
const/16 v17, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v16, v17
move-object/from16 v0, v16
invoke-virtual {v5, v7, v15, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
if-eqz v11, :cond_61a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v5}, Lcom/bbm/ui/activities/MainActivity;->h(Lcom/bbm/ui/activities/MainActivity;)I
move-result v5
if-ne v2, v5, :cond_61a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v5, "hasNewChannelNotification"
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
invoke-virtual {v2, v5, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:goto_5c9
const/4 v7, 0x0
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->N()Lcom/bbm/j/w;
move-result-object v11
invoke-interface {v11}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v16
:goto_5e3
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_622
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/ei;
iget-object v0, v2, Lcom/bbm/d/ei;->g:Lcom/bbm/util/bh;
move-object/from16 v17, v0
sget-object v18, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
move-object/from16 v0, v17
move-object/from16 v1, v18
if-ne v0, v1, :cond_5fd
add-int/lit8 v7, v7, 0x1
:cond_5fd
iget-boolean v2, v2, Lcom/bbm/d/ei;->c:Z
if-nez v2, :cond_822
const/4 v2, 0x1
:goto_602
move v5, v2
goto :goto_5e3
:cond_604
const/4 v2, 0x0
move v8, v2
goto/16 :goto_46a
:cond_608
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->f:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v8}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
goto/16 :goto_4c7
:cond_611
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
const/4 v5, 0x0
iput v5, v2, Lcom/bbm/ui/activities/MainActivity;->c:I
goto/16 :goto_51d
:cond_61a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v11}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
goto :goto_5c9
:cond_622
if-eqz v5, :cond_812
const/4 v2, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/bbm/ui/activities/xn;->a(Z)V
:cond_62a
:goto_62a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v5}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v11, 0x7f0d000a
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v16, v0
const/16 v17, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v16, v17
move-object/from16 v0, v16
invoke-virtual {v5, v11, v7, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/bbm/ui/slidingmenu/a;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v3}, Lcom/bbm/ui/slidingmenu/a;->e(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
const-string v2, "stickers_last_viewed_time"
const-wide/16 v16, 0x0
move-wide/from16 v0, v16
invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v16
const-string v2, "stickers_newest_publish_time"
const-wide/16 v21, 0x0
move-wide/from16 v0, v21
invoke-interface {v5, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v21
const/4 v3, 0x0
const-wide/16 v23, 0x0
cmp-long v2, v16, v23
if-eqz v2, :cond_680
cmp-long v2, v16, v21
if-gez v2, :cond_699
:cond_680
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a0082
if-eq v2, v7, :cond_699
const/4 v2, 0x1
move v3, v2
:cond_699
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->g:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v2, v3}, Lcom/bbm/ui/slidingmenu/a;->a(Z)V
if-eqz v8, :cond_6ac
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->u(Lcom/bbm/ui/activities/MainActivity;)I
move-result v2
if-gt v15, v2, :cond_6ba
:cond_6ac
if-eqz v3, :cond_774
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->v(Lcom/bbm/ui/activities/MainActivity;)J
move-result-wide v16
cmp-long v2, v21, v16
if-lez v2, :cond_774
:cond_6ba
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a007c
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a007a
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a007d
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a0078
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a0080
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a0081
if-eq v2, v7, :cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
const v7, 0x7f0a0082
if-ne v2, v7, :cond_767
:cond_75b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v7, 0x7
invoke-virtual {v2, v7}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V
:cond_767
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v7, 0x7
const/4 v11, 0x1
invoke-virtual {v2, v7, v11}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
:cond_774
if-nez v8, :cond_785
if-nez v3, :cond_785
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
move-result-object v2
const/4 v3, 0x7
const/4 v7, 0x0
invoke-virtual {v2, v3, v7}, Lcom/bbm/ui/MainTabBarView;->setBadgeEnabled(IZ)V
:cond_785
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2, v15}, Lcom/bbm/ui/activities/MainActivity;->c(Lcom/bbm/ui/activities/MainActivity;I)I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2, v14}, Lcom/bbm/ui/activities/MainActivity;->d(Lcom/bbm/ui/activities/MainActivity;I)I
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
move-wide/from16 v0, v21
invoke-static {v2, v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/activities/MainActivity;J)J
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->w(Lcom/bbm/ui/activities/MainActivity;)I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->u(Lcom/bbm/ui/activities/MainActivity;)I
move-result v3
if-ge v2, v3, :cond_7bd
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->w(Lcom/bbm/ui/activities/MainActivity;)I
move-result v3
invoke-static {v2, v3}, Lcom/bbm/ui/activities/MainActivity;->e(Lcom/bbm/ui/activities/MainActivity;I)I
:cond_7bd
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->x(Lcom/bbm/ui/activities/MainActivity;)I
move-result v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->y(Lcom/bbm/ui/activities/MainActivity;)I
move-result v3
if-ge v2, v3, :cond_7de
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->x(Lcom/bbm/ui/activities/MainActivity;)I
move-result v3
invoke-static {v2, v3}, Lcom/bbm/ui/activities/MainActivity;->f(Lcom/bbm/ui/activities/MainActivity;I)I
:cond_7de
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v3, "mixpanel_number_of_contacts"
move/from16 v0, v19
invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_active_chats"
invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_active_group_chats"
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_groups"
move/from16 v0, v20
invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_new_updates"
invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_new_group_updates"
invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_new_invites"
invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
const-string v3, "mixpanel_number_of_new_group_invites"
invoke-interface {v2, v3, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
:cond_812
if-nez v5, :cond_62a
invoke-interface {v11}, Lcom/bbm/j/w;->b()Z
move-result v2
if-nez v2, :cond_62a
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/bbm/ui/activities/xn;->a(Z)V
goto/16 :goto_62a
:cond_822
move v2, v5
goto/16 :goto_602
:cond_825
move v2, v6
goto/16 :goto_409
:cond_828
move v2, v5
goto/16 :goto_39c
:cond_82b
move v2, v4
goto/16 :goto_216
.end method