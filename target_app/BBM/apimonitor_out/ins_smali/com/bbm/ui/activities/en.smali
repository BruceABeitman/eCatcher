.class final Lcom/bbm/ui/activities/en;
.super Landroid/widget/BaseAdapter;
.source "ChannelStatsActivity.java"
.implements Landroid/widget/ListAdapter;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelStatsActivity;
.field private final b:Landroid/view/LayoutInflater;
.method public constructor <init>(Lcom/bbm/ui/activities/ChannelStatsActivity;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/en;->b:Landroid/view/LayoutInflater;
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 3
const v0, 0x7f0300a4
return v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
if-nez p2, :cond_69
new-instance v1, Lcom/bbm/ui/activities/eo;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/eo;-><init>(Lcom/bbm/ui/activities/en;)V
iget-object v0, p0, Lcom/bbm/ui/activities/en;->b:Landroid/view/LayoutInflater;
const v2, 0x7f0300a4
const/4 v3, 0x0
invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v0, 0x7f0a0400
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/eo;->a:Landroid/widget/TextView;
const v0, 0x7f0a0401
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/bbm/ui/activities/eo;->b:Landroid/widget/TextView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_2a
iget-object v0, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v3, ""
const-string v2, "0"
:try_start_3c
const-string v4, "method"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "count"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_47
.catch Lorg/json/JSONException; {:try_start_3c .. :try_end_47} :catch_71
move-result-object v0
move-object v2, v3
:goto_49
iget-object v3, v1, Lcom/bbm/ui/activities/eo;->a:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->a:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_7c
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020b
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
:goto_60
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/bbm/ui/activities/eo;->b:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_69
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/eo;
move-object v1, v0
goto :goto_2a
:catch_71
move-exception v0
move-object v6, v0
move-object v0, v3
move-object v3, v6
invoke-static {v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v6, v2
move-object v2, v0
move-object v0, v6
goto :goto_49
:cond_7c
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->b:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_90
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0208
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_60
:cond_90
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->c:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_a4
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0209
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_60
:cond_a4
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->d:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_b8
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0211
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_60
:cond_b8
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->e:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_cc
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0210
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_60
:cond_cc
const-string v5, "promotedPost"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_e0
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020d
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto :goto_60
:cond_e0
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->f:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_f5
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020c
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_f5
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->g:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_10a
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020a
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_10a
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->h:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_11f
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0207
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_11f
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->i:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_134
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e0212
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_134
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->j:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_149
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020e
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_149
sget-object v5, Lcom/bbm/ui/activities/ChannelStatsActivity;->k:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_15e
invoke-virtual {v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v4, 0x7f0e020f
invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_60
:cond_15e
const-string v2, ""
goto/16 :goto_60
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/en;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method