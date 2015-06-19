.class final Lcom/spotify/mobile/android/util/tracking/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/tracking/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/util/tracking/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/d;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->c:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->g:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->a:Landroid/content/Context;

    :cond_b
    :goto_b
    return-void

    :cond_c
    const-string v0, "TYPE_VIEW_LOADING"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ARG_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bundle must have id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    const-string v0, "ARG_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bundle must contain message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    const-string v0, "ARG_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_start"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/tracking/e;

    const-string v5, "Already started view %s with id %d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/e;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_87
    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    new-instance v5, Lcom/spotify/mobile/android/util/tracking/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2, v3}, Lcom/spotify/mobile/android/util/tracking/e;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_97
    const-string v2, "load_finished"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    const-string v1, "Could not find matching start event for view %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_be
    iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/tracking/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ec

    const-string v2, "Uri mismatch for view with id %d. Expected: %s, found %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/e;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_ec
    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/tracking/e;->b()J

    move-result-wide v4

    sub-long v1, v2, v4

    const-string v3, "View %s took %dms. to load"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/util/tracking/d;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v3

    new-instance v4, Lcom/spotify/mobile/android/util/tracking/debug/ViewLoadUpdate;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1, v2}, Lcom/spotify/mobile/android/util/tracking/debug/ViewLoadUpdate;-><init>(Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_VIEW_LOAD_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_VIEW_LOAD_UPDATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z

    goto/16 :goto_b

    :cond_125
    const-string v2, "load_cancelled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15c

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_148

    const-string v1, "Could not find matching start event for view %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_148
    const-string v2, "Cancelling %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/d;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_15c
    const-string v0, "Unknown event type %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b
.end method
