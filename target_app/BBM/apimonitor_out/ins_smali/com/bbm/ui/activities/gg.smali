.class final Lcom/bbm/ui/activities/gg;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/d/fg;
.field final synthetic b:Lcom/bbm/ui/activities/gc;
.method constructor <init>(Lcom/bbm/ui/activities/gc;Lcom/bbm/d/fg;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/gg;->b:Lcom/bbm/ui/activities/gc;
iput-object p2, p0, Lcom/bbm/ui/activities/gg;->a:Lcom/bbm/d/fg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/gg;->b:Lcom/bbm/ui/activities/gc;
iget-object v1, v1, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/gg;->a:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->S(Ljava/lang/String;)Lcom/bbm/d/eg;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/eg;->h:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_18
:goto_17
return v0
:cond_18
iget-object v2, p0, Lcom/bbm/ui/activities/gg;->b:Lcom/bbm/ui/activities/gc;
iget-object v2, v2, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v1, Lcom/bbm/d/eg;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/gg;->b:Lcom/bbm/ui/activities/gc;
iget-object v3, v3, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
invoke-static {v2, v1, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V
const/4 v0, 0x1
goto :goto_17
.end method