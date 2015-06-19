.class final Lcom/bbm/ui/activities/gs;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/n/b;
.field final synthetic b:Lcom/bbm/ui/activities/gq;
.method constructor <init>(Lcom/bbm/ui/activities/gq;Lcom/bbm/n/b;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iput-object p2, p0, Lcom/bbm/ui/activities/gs;->a:Lcom/bbm/n/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/gs; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v6, 0x7f0e0773
const v8, 0x7f0e0164
const/16 v3, 0x11
const/4 v2, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z
move-result v0
if-eqz v0, :cond_15c
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->a:Lcom/bbm/n/b;
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->a:Lcom/bbm/n/b;
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z
move-result v0
if-eqz v0, :cond_96
:cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a()Z
move-result v0
if-eqz v0, :cond_60
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f02003b
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
:goto_5f
:cond_5f
const-string v1, " - Lcom/bbm/ui/activities/gs; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_60
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setConversationUri(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f020039
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
goto :goto_5f
:cond_96
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->a:Lcom/bbm/n/b;
invoke-virtual {v0}, Lcom/bbm/n/b;->e()Z
move-result v0
if-eqz v0, :cond_af
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v1, v6}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
move v5, v4
invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
goto :goto_5f
:cond_af
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->a:Lcom/bbm/n/b;
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->A(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/gp;
move-result-object v5
if-eqz v5, :cond_5f
iget-object v0, v5, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v6, :cond_5f
iget-object v0, v1, Lcom/bbm/n/b;->k:Lcom/bbm/util/cv;
invoke-virtual {v0}, Lcom/bbm/util/cv;->a()Z
move-result v0
if-eqz v0, :cond_f1
const/16 v0, 0x13
:goto_cb
if-eqz v0, :cond_5f
invoke-virtual {v1}, Lcom/bbm/n/b;->i()V
packed-switch v0, :pswitch_data_19a
:pswitch_d3
iget-object v5, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v6, 0x7f0e016e
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v7, v4
invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
:goto_e4
if-eqz v6, :cond_5f
iget-object v5, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
move v7, v3
move v8, v4
move v9, v4
move v10, v2
invoke-static/range {v5 .. v10}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
goto/16 :goto_5f
:cond_f1
iget-object v0, v1, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;
const/4 v6, 0x2
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-virtual {v0, v6}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v0, v1, Lcom/bbm/n/b;->b:Lcom/bbm/j/t;
iget-object v6, v5, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v0, v6}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v0, v1, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmMediaCallService;
invoke-static {v5}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v6
iget-object v7, v5, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-virtual {v0, v6, v7, v4}, Lcom/rim/bbm/BbmMediaCallService;->makeCall(Ljava/lang/String;Ljava/lang/String;Z)Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;
move-result-object v0
iget v6, v0, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;->newCallId:I
iput v6, v1, Lcom/bbm/n/b;->g:I
iget v0, v0, Lcom/rim/bbm/BbmMediaCallService$MakeCallResult;->error:I
goto :goto_cb
:pswitch_11b
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v5, 0x7f0e0168
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:pswitch_125
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:pswitch_12c
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v5, 0x7f0e0167
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:pswitch_136
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v5, 0x7f0e016d
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:pswitch_140
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v6, 0x7f0e0166
new-array v7, v2, [Ljava/lang/Object;
invoke-static {v5}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v5
aput-object v5, v7, v4
invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:pswitch_152
iget-object v0, v1, Lcom/bbm/n/b;->i:Landroid/content/Context;
const v5, 0x7f0e016b
invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_e4
:cond_15c
:try_start_15c
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ac(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/fk;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/fk;->a()Z
:try_end_167
.catch Lcom/bbm/j/z; {:try_start_15c .. :try_end_167} :catch_18d
move-result v0
:goto_168
iget-object v1, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->d:Landroid/content/SharedPreferences;
const-string v5, "allow_mobile_calls"
invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_190
if-nez v0, :cond_190
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0, v8}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v6
:goto_180
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v5, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
move v7, v3
move v8, v4
move v9, v4
move v10, v2
invoke-static/range {v5 .. v10}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
goto/16 :goto_5f
:catch_18d
move-exception v0
move v0, v4
goto :goto_168
:cond_190
iget-object v0, p0, Lcom/bbm/ui/activities/gs;->b:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v6
goto :goto_180
nop
:pswitch_data_19a
.packed-switch 0x2
:pswitch_140
:pswitch_140
:pswitch_140
:pswitch_11b
:pswitch_d3
:pswitch_d3
:pswitch_125
:pswitch_12c
:pswitch_136
:pswitch_136
:pswitch_136
:pswitch_136
:pswitch_136
:pswitch_d3
:pswitch_140
:pswitch_136
:pswitch_d3
:pswitch_152
.end packed-switch
.end method