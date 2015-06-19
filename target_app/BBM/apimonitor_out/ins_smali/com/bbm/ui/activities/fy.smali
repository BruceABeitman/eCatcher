.class final Lcom/bbm/ui/activities/fy;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/fx;
.method constructor <init>(Lcom/bbm/ui/activities/fx;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/fy;->a:Lcom/bbm/ui/activities/fx;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/bbm/ui/activities/fy;->a:Lcom/bbm/ui/activities/fx;
iget-object v1, v1, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/fy;->a:Lcom/bbm/ui/activities/fx;
iget-object v2, v2, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_1f
const/4 v0, 0x0
:goto_1e
return v0
:cond_1f
iget-object v2, p0, Lcom/bbm/ui/activities/fy;->a:Lcom/bbm/ui/activities/fx;
iget-object v2, v2, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v2, v2, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v2, v2, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v2, p0, Lcom/bbm/ui/activities/fy;->a:Lcom/bbm/ui/activities/fx;
iget-object v2, v2, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v1, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_1e
.end method