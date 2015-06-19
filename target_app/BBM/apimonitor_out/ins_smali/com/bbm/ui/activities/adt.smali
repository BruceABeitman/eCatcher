.class final Lcom/bbm/ui/activities/adt;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/adt;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/adt; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mOnKeyListener onKey"
const-class v1, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
const/16 v0, 0x42
if-ne p2, v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/activities/adt;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->i(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
:cond_17
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/adt; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method