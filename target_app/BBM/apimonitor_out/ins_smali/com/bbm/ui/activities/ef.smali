.class final Lcom/bbm/ui/activities/ef;
.super Ljava/lang/Object;
.source "ChannelSettingsActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ef;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/ef;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->onAllowChatClicked(Landroid/view/View;)V
return-void
.end method