.class final Lcom/bbm/ui/activities/adx;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/adx; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/adx;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V
const-string v1, " - Lcom/bbm/ui/activities/adx; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method