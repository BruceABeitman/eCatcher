.class final Lcom/bbm/ui/activities/gl;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 7
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_2b
iget-object v2, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
sget-object v3, Lcom/bbm/ui/activities/it;->b:[I
iget-object v4, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v4}, Lcom/bbm/d/fk;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_c6
:goto_25
iget-object v0, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->o()V
move v0, v1
:goto_2b
:cond_2b
return v0
:pswitch_2c
iget-object v3, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_61
iget-object v3, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v3
iget-object v4, v3, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-boolean v3, v3, Lcom/bbm/d/fs;->h:Z
invoke-static {v0, v2, v3}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/c/fm;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
goto :goto_25
:cond_61
move v0, v1
goto :goto_2b
:pswitch_63
iget-object v3, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_c3
iget-object v3, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v3
iget-object v4, v3, Lcom/bbm/d/ex;->m:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_2b
iget-boolean v0, v3, Lcom/bbm/d/ex;->g:Z
if-eqz v0, :cond_c0
iget-object v0, v3, Lcom/bbm/d/ex;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_ba
new-instance v0, Ljava/io/File;
iget-object v3, v3, Lcom/bbm/d/ex;->h:Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
:goto_a0
invoke-static {v0}, Lcom/google/b/d/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "amr"
invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_bd
iget-object v0, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/gl;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
goto/16 :goto_25
:cond_ba
iget-object v0, v3, Lcom/bbm/d/ex;->j:Ljava/lang/String;
goto :goto_a0
:cond_bd
move v0, v1
goto/16 :goto_2b
:cond_c0
move v0, v1
goto/16 :goto_2b
:cond_c3
move v0, v1
goto/16 :goto_2b
:pswitch_data_c6
.packed-switch 0x1
:pswitch_2c
:pswitch_2c
:pswitch_63
.end packed-switch
.end method