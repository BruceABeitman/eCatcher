.class final Lcom/bbm/ui/activities/agq;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/bbm/ui/p;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->o(Lcom/bbm/ui/activities/SettingsActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SettingsActivity;->n(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/ui/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->o(Lcom/bbm/ui/activities/SettingsActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/SettingsActivity;->n(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/ui/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_69

    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    const-string v2, "notification_sound_uri"

    iget-object v0, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->o(Lcom/bbm/ui/activities/SettingsActivity;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/agq;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/SettingsActivity;->n(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/ui/l;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_69
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method
