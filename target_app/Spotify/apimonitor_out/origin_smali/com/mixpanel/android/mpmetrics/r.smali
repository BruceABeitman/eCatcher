.class final Lcom/mixpanel/android/mpmetrics/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static j:Z

.field private static final k:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/r;->j:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    new-instance v0, Lcom/mixpanel/android/mpmetrics/r$1;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/r$1;-><init>(Lcom/mixpanel/android/mpmetrics/r;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Lorg/json/JSONArray;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "people_distinct_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "waiting_array"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    if-eqz v3, :cond_39

    :try_start_11
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_31

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_43

    :try_start_22
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "$distinct_id"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2e} :catch_3a

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_31
    move-exception v1

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Waiting people records were unreadable."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-object v0

    :catch_3a
    move-exception v2

    const-string v5, "MixpanelAPI PersistentProperties"

    const-string v6, "Unparsable object found in waiting people records"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :cond_43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "waiting_array"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v1

    goto :goto_39
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_33

    goto :goto_17

    :catchall_33
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_36
    :try_start_36
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/r;->j:Z

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->h()V

    return-void
.end method

.method static synthetic f()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()Z
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/r;->j:Z

    return v0
.end method

.method private h()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Ljava/util/Map;

    :try_start_7
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_44} :catch_45
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_44} :catch_52

    goto :goto_25

    :catch_45
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot load referrer properties from shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_51
    :goto_51
    return-void

    :catch_52
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot load referrer properties from shared preferences."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method private i()V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_9} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_9} :catch_1a

    :goto_9
    if-nez v0, :cond_24

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v2, "MixpanelAPI PersistentProperties"

    const-string v3, "Cannot read distinct ids from sharedPreferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_9

    :catch_1a
    move-exception v0

    const-string v2, "MixpanelAPI PersistentProperties"

    const-string v3, "Cannot read distinct ids from sharedPreferences."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_9

    :cond_24
    const-string v2, "events_distinct_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    const-string v2, "people_distinct_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    const-string v2, "waiting_array"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_3e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_45} :catch_5a

    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    if-nez v0, :cond_56

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->j()V

    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    goto :goto_b

    :catch_5a
    move-exception v1

    const-string v1, "MixpanelAPI PersistentProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not interpret waiting people JSON record "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private j()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "events_distinct_id"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "people_distinct_id"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    if-nez v1, :cond_27

    const-string v1, "waiting_array"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_26
    return-void

    :cond_27
    const-string v1, "waiting_array"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_32
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_32} :catch_33
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_32} :catch_40

    goto :goto_23

    :catch_33
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write distinct ids to shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catch_40
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write distinct ids to shared preferences."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_26

    :try_start_4
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "super_properties"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_1b} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1b} :catch_41
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1b} :catch_55

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_26

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    return-object v0

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot load superProperties from SharedPreferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_9c

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_26

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    goto :goto_26

    :catch_41
    move-exception v0

    :try_start_42
    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot load superProperties from SharedPreferences."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_9c

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_26

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    goto :goto_26

    :catch_55
    move-exception v0

    :try_start_56
    const-string v0, "MixpanelAPI PersistentProperties"

    const-string v1, "Cannot parse stored superProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_74

    const-string v0, "MixpanelAPI PersistentProperties"

    const-string v1, "storeSuperProperties should not be called with uninitialized superPropertiesCache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_56 .. :try_end_68} :catchall_9c

    :goto_68
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_26

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    goto :goto_26

    :cond_74
    :try_start_74
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_9c

    move-result-object v1

    :try_start_7a
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "super_properties"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_9c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7a .. :try_end_8e} :catch_8f
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_8e} :catch_a9

    goto :goto_68

    :catch_8f
    move-exception v0

    :try_start_90
    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot store superProperties in shared preferences."

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_9c

    goto :goto_68

    :catchall_9c
    move-exception v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    if-nez v1, :cond_a8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lorg/json/JSONObject;

    :cond_a8
    throw v0

    :catch_a9
    move-exception v0

    :try_start_aa
    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Cannot store superProperties in shared preferences."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_9c

    goto :goto_68
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->i()V

    :cond_7
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->j()V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 3

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->i()V

    :cond_7
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    if-nez v0, :cond_12

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    :cond_12
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->j()V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/r;->j:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Ljava/util/Map;

    if-nez v0, :cond_11

    :cond_b
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->h()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/r;->j:Z

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Ljava/util/Map;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_22

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write push id to shared preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_22
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write push id to shared preferences"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->i()V

    :cond_7
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/r;->i()V

    :cond_7
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_22

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write push id to shared preferences"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_22
    move-exception v0

    const-string v1, "MixpanelAPI PersistentProperties"

    const-string v2, "Can\'t write push id to shared preferences"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method
