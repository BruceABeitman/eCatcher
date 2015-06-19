.class final Lcom/bbm/ui/activities/uu;
.super Ljava/lang/Object;
.source "InviteActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Ljava/util/ArrayList;
.field final synthetic c:Lcom/bbm/ui/activities/ut;
.method constructor <init>(Lcom/bbm/ui/activities/ut;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/uu;->c:Lcom/bbm/ui/activities/ut;
iput-object p2, p0, Lcom/bbm/ui/activities/uu;->a:Ljava/util/ArrayList;
iput-object p3, p0, Lcom/bbm/ui/activities/uu;->b:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/uu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "unblockContacts Dialog onPositive button Clicked"
const-class v1, Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uu;->a:Ljava/util/ArrayList;
invoke-static {v0}, Lcom/bbm/h/aq;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uu;->c:Lcom/bbm/ui/activities/ut;
iget-object v0, v0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->g(Lcom/bbm/ui/activities/InviteActivity;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/bbm/ui/activities/uu;->c:Lcom/bbm/ui/activities/ut;
iget-object v0, v0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/uu;->b:Ljava/util/ArrayList;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/InviteActivity;Ljava/util/List;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uu;->c:Lcom/bbm/ui/activities/ut;
iget-object v0, v0, Lcom/bbm/ui/activities/ut;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/InviteActivity;->finish()V
:cond_26
const-string v1, " - Lcom/bbm/ui/activities/uu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method