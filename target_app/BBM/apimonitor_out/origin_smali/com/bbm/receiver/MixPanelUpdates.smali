.class public Lcom/bbm/receiver/MixPanelUpdates;
.super Landroid/content/BroadcastReceiver;
.source "MixPanelUpdates.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "onReceive"

    const-class v1, Lcom/bbm/receiver/MixPanelUpdates;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v5

    iget-object v0, v5, Lcom/bbm/c/c;->aG:Ljava/lang/String;

    if-eqz v0, :cond_51f

    invoke-virtual {v5}, Lcom/bbm/c/c;->d()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v0, "mixpanel_number_of_contacts"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->v:I

    const-string v0, "mixpanel_number_of_active_chats"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->w:I

    const-string v0, "mixpanel_number_of_active_group_chats"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->x:I

    const-string v0, "mixpanel_number_of_groups"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->y:I

    const-string v0, "mixpanel_number_of_new_updates"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->z:I

    const-string v0, "mixpanel_number_of_new_group_updates"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->A:I

    const-string v0, "mixpanel_number_of_new_invites"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->B:I

    const-string v0, "mixpanel_number_of_new_group_invites"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->C:I

    const-string v0, "mixpanel_banner_no_connection_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->D:I

    const-string v0, "mixpanel_banner_limited_connection_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->E:I

    const-string v0, "mixpanel_banner_connected_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->F:I

    const-string v0, "mixpanel_platform_connected_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->G:I

    const-string v0, "mixpanel_platform_disconnected_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->H:I

    const-string v0, "mixpanel_connection_wifi_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->I:I

    const-string v0, "mixpanel_connection_mobile_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->J:I

    const-string v0, "mixpanel_connection_other_count"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->K:I

    const-string v0, "mixpanel_number_of_service_starts"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->L:I

    const-string v0, "mixpanel_number_of_app_starts"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/bbm/c/c;->M:I

    const-string v0, "sticky_notification"

    invoke-interface {v6, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_b5
    sget-object v0, Lcom/bbm/c/n;->f:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->c:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->g:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->d:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->h:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->e:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->i:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->f:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->j:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->g:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->k:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->h:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->l:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->i:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->m:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->j:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->n:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->k:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->o:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->l:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->a:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->m:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->b:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_417

    iget-object v0, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v4

    :goto_150
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_169

    iget-object v0, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_150

    :cond_169
    sget-object v0, Lcom/bbm/c/n;->b:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->d:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->e:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    div-int/2addr v1, v9

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_191
    sget-object v0, Lcom/bbm/c/n;->c:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->o:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->p:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->p:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->q:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->q:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->r:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->r:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->t:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->s:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->s:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->t:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->u:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->u:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->v:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->v:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->w:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->w:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->x:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->x:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->y:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->y:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->z:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->z:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->A:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->A:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->B:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->B:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->C:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->C:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->J:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->T:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->K:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->U:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->L:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->V:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->M:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->W:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aD:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->D:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aE:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->E:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aF:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->F:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aG:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->G:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aH:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->H:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aI:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->I:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aJ:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->J:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aK:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->K:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aL:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->L:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->aM:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->M:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->D:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->O:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->E:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->P:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->F:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v9

    iget v0, v5, Lcom/bbm/c/c;->N:I

    if-eqz v0, :cond_446

    iget-wide v0, v5, Lcom/bbm/c/c;->Q:J

    iget v10, v5, Lcom/bbm/c/c;->N:I

    int-to-long v10, v10

    div-long/2addr v0, v10

    :goto_2f6
    invoke-virtual {v8, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->G:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->R:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->H:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v9, v5, Lcom/bbm/c/c;->S:J

    invoke-virtual {v8, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->a:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aq:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->b:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->ar:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->c:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->as:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->d:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->at:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->e:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->au:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->f:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->av:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->g:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aw:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->h:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->ax:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->i:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->ay:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->j:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->az:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->k:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aA:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->l:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aB:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->m:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aC:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/t;->n:Lcom/bbm/c/t;

    invoke-virtual {v0}, Lcom/bbm/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Lcom/bbm/c/c;->aD:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->af:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "mixpanel_last_upload"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-nez v6, :cond_449

    sget-object v0, Lcom/bbm/c/n;->I:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_3c8
    iget-object v0, v5, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;

    sget-object v1, Lcom/bbm/c/m;->a:Lcom/bbm/c/m;

    invoke-virtual {v1}, Lcom/bbm/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/c/a/a/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, v5, Lcom/bbm/c/c;->aG:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3d8
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_3d8} :catch_437

    :goto_3d8
    iget-object v0, v5, Lcom/bbm/c/c;->aE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3de
    :goto_3de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_3ea
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "properties"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3de

    if-eqz v7, :cond_3de

    iget-object v8, v5, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;

    invoke-virtual {v8, v0, v7}, Lcom/c/a/a/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, v5, Lcom/bbm/c/c;->aG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_40d
    .catch Lorg/json/JSONException; {:try_start_3ea .. :try_end_40d} :catch_40e

    goto :goto_3de

    :catch_40e
    move-exception v0

    const-string v6, "EventTracker.flush() - track pending event"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3de

    :cond_417
    :try_start_417
    sget-object v0, Lcom/bbm/c/n;->b:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->d:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/bbm/c/n;->e:Lcom/bbm/c/n;

    invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_435
    .catch Lorg/json/JSONException; {:try_start_417 .. :try_end_435} :catch_437

    goto/16 :goto_191

    :catch_437
    move-exception v0

    const-string v1, "EventTracker.flush JSONException -"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1, v6}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3d8

    :cond_446
    move-wide v0, v2

    goto/16 :goto_2f6

    :cond_449
    :try_start_449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v9, Lcom/bbm/c/n;->I:Lcom/bbm/c/n;

    invoke-virtual {v9}, Lcom/bbm/c/n;->toString()Ljava/lang/String;

    move-result-object v9

    sub-long v0, v6, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-virtual {v8, v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_45b
    .catch Lorg/json/JSONException; {:try_start_449 .. :try_end_45b} :catch_437

    goto/16 :goto_3c8

    :cond_45d
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v5, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_46c
    :goto_46c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_478
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_491
    .catch Lorg/json/JSONException; {:try_start_478 .. :try_end_491} :catch_492

    goto :goto_46c

    :catch_492
    move-exception v0

    const-string v1, "EventTracker.flush() - track unusual errors"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_46c

    :cond_49b
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4ac

    iget-object v0, v5, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;

    sget-object v1, Lcom/bbm/c/m;->n:Lcom/bbm/c/m;

    invoke-virtual {v1}, Lcom/bbm/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/c/a/a/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4ac
    iget-object v0, v5, Lcom/bbm/c/c;->b:Lcom/c/a/a/j;

    invoke-virtual {v0}, Lcom/c/a/a/j;->a()V

    iput v4, v5, Lcom/bbm/c/c;->c:I

    iput v4, v5, Lcom/bbm/c/c;->d:I

    iput v4, v5, Lcom/bbm/c/c;->e:I

    iput v4, v5, Lcom/bbm/c/c;->f:I

    iput v4, v5, Lcom/bbm/c/c;->g:I

    iput v4, v5, Lcom/bbm/c/c;->h:I

    iput v4, v5, Lcom/bbm/c/c;->i:I

    iput v4, v5, Lcom/bbm/c/c;->j:I

    iput v4, v5, Lcom/bbm/c/c;->k:I

    iput v4, v5, Lcom/bbm/c/c;->l:I

    iput v4, v5, Lcom/bbm/c/c;->m:I

    iget-object v0, v5, Lcom/bbm/c/c;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v4, v5, Lcom/bbm/c/c;->o:I

    iput v4, v5, Lcom/bbm/c/c;->p:I

    iput-wide v2, v5, Lcom/bbm/c/c;->q:J

    iput-wide v2, v5, Lcom/bbm/c/c;->r:J

    iput-wide v2, v5, Lcom/bbm/c/c;->s:J

    iput-wide v2, v5, Lcom/bbm/c/c;->t:J

    iput v4, v5, Lcom/bbm/c/c;->u:I

    iput v4, v5, Lcom/bbm/c/c;->v:I

    iput v4, v5, Lcom/bbm/c/c;->w:I

    iput v4, v5, Lcom/bbm/c/c;->x:I

    iput v4, v5, Lcom/bbm/c/c;->y:I

    iput v4, v5, Lcom/bbm/c/c;->z:I

    iput v4, v5, Lcom/bbm/c/c;->A:I

    iput v4, v5, Lcom/bbm/c/c;->B:I

    iput v4, v5, Lcom/bbm/c/c;->C:I

    iput v4, v5, Lcom/bbm/c/c;->T:I

    iput-wide v2, v5, Lcom/bbm/c/c;->U:J

    iput-wide v2, v5, Lcom/bbm/c/c;->V:J

    iput v4, v5, Lcom/bbm/c/c;->W:I

    iput v4, v5, Lcom/bbm/c/c;->F:I

    iput v4, v5, Lcom/bbm/c/c;->E:I

    iput v4, v5, Lcom/bbm/c/c;->D:I

    iput v4, v5, Lcom/bbm/c/c;->G:I

    iput v4, v5, Lcom/bbm/c/c;->H:I

    iput v4, v5, Lcom/bbm/c/c;->I:I

    iput v4, v5, Lcom/bbm/c/c;->J:I

    iput v4, v5, Lcom/bbm/c/c;->K:I

    iput v4, v5, Lcom/bbm/c/c;->L:I

    iput v4, v5, Lcom/bbm/c/c;->M:I

    iput v4, v5, Lcom/bbm/c/c;->O:I

    iput v4, v5, Lcom/bbm/c/c;->P:I

    iput v4, v5, Lcom/bbm/c/c;->N:I

    iput-wide v2, v5, Lcom/bbm/c/c;->Q:J

    iput-wide v2, v5, Lcom/bbm/c/c;->R:J

    iput-wide v2, v5, Lcom/bbm/c/c;->S:J

    iget-object v0, v5, Lcom/bbm/c/c;->aE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, v5, Lcom/bbm/c/c;->aF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {v5, p1}, Lcom/bbm/c/c;->a(Landroid/content/Context;)V

    :cond_51f
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mixpanel_last_upload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
