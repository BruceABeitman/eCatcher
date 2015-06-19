.class  Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/ShareActionProvider;
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V
return-void
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;
invoke-static {v4}, Landroid/support/v7/widget/ShareActionProvider;->access$200(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;
move-result-object v0
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_28
const/high16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v3, p0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;->this$0:Landroid/support/v7/widget/ShareActionProvider;
#getter for: Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/widget/ShareActionProvider;->access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_28
const/4 v3, 0x1
const-string v1, " - Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v3
.end method