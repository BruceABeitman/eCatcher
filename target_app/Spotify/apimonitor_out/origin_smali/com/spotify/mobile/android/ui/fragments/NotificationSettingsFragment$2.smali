.class final Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;
.super Lcom/loopj/android/http/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-direct {p0}, Lcom/loopj/android/http/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected array"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, p2, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->D(Landroid/content/Context;)V

    :goto_20
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Ljava/util/Map;)V

    return-void

    :cond_27
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->E(Landroid/content/Context;)V

    goto :goto_20
.end method

.method public final a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 5

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 5

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(ILorg/json/JSONObject;)V
    .registers 6

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected array"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v1, v2

    :goto_b
    if-ge v1, v3, :cond_2e

    :try_start_d
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a(Lorg/json/JSONObject;)Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    move-result-object v0

    iget-object v5, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1a} :catch_1e

    :goto_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :catch_1e
    move-exception v0

    const-string v5, "Error parsing item %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Ljava/util/Map;)V

    return-void
.end method
