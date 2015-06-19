.class final Lcom/bbm/ui/activities/im;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/d/fg;
.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/fg;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/im;->a:Lcom/bbm/d/fg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 11
const v7, 0x7f09006c
const v6, 0x7f09000f
const/4 v5, 0x0
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
sparse-switch v0, :sswitch_data_9a
:goto_c
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
return-void
:sswitch_17
const-string v0, "on copy message selected"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aH(Lcom/bbm/ui/activities/ConversationActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v5}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-static {v0, v1, v7, v6}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e04ec
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_c
:sswitch_42
const-string v0, "on copy resend message selected"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->a:Lcom/bbm/d/fg;
iget-wide v1, v1, Lcom/bbm/d/fg;->i:J
iget-object v3, v0, Lcom/bbm/ui/activities/ConversationActivity;->k:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->l:Ljava/lang/String;
new-instance v4, Lcom/bbm/d/de;
invoke-direct {v4, v0, v1, v2}, Lcom/bbm/d/de;-><init>(Ljava/lang/String;J)V
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v5}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-static {v0, v1, v7, v6}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
const v2, 0x7f0e04f0
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_c
:sswitch_7a
const-string v0, "on recall message selected"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->a:Lcom/bbm/d/fg;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->b(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/fg;)V
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v5}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/im;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v1
invoke-static {v0, v1, v7, v6}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V
goto/16 :goto_c
:sswitch_data_9a
.sparse-switch
0x7f0a008a -> :sswitch_17
0x7f0a0092 -> :sswitch_7a
0x7f0a0094 -> :sswitch_42
.end sparse-switch
.end method