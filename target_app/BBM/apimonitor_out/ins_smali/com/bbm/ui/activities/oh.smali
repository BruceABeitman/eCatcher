.class final Lcom/bbm/ui/activities/oh;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/oh; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "addNewButton Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->length()I
move-result v0
if-lez v0, :cond_47
iget-object v0, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v2, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/bbm/g/bt;->b:Lcom/bbm/g/bt;
sget-object v4, Lcom/bbm/g/bu;->a:Lcom/bbm/g/bu;
invoke-static {v2, v0, v3, v4}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/g/bt;Lcom/bbm/g/bu;)Lcom/bbm/g/bs;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->a(Lcom/bbm/ui/activities/GroupListItemsActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
:goto_46
const-string v1, " - Lcom/bbm/ui/activities/oh; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_47
iget-object v0, p0, Lcom/bbm/ui/activities/oh;->a:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->c(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
goto :goto_46
.end method