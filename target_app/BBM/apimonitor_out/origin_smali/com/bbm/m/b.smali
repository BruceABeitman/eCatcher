.class final Lcom/bbm/m/b;
.super Landroid/content/BroadcastReceiver;
.source "Swilt.java"


# instance fields
.field final synthetic a:Lcom/bbm/m/a;


# direct methods
.method private constructor <init>(Lcom/bbm/m/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/m/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/m/b;-><init>(Lcom/bbm/m/a;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v1, "SWILT - detect change"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-nez p2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "track"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    move v1, v7

    :goto_20
    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    const-string v2, ""

    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    const-string v3, ""

    const-string v1, "track"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "track"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    const-string v1, "duration"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "duration"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_5a
    invoke-static {v1}, Lcom/bbm/m/a;->a(Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    const-string v1, "playing"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_72
    :goto_72
    if-nez v0, :cond_127

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "sonyericsson"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_127

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    :goto_8b
    new-instance v0, Lcom/bbm/m/c;

    iget-object v1, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/m/c;-><init>(Lcom/bbm/m/a;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v1, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    invoke-virtual {v1, v0}, Lcom/bbm/m/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    :cond_9e
    sput-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    iput-boolean v6, v0, Lcom/bbm/m/c;->d:Z

    iget-object v0, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    invoke-static {}, Lcom/bbm/m/a;->c()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a7} :catch_a9

    goto/16 :goto_c

    :catch_a9
    move-exception v0

    const-string v1, "SWILT error"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_b5
    :try_start_b5
    const-string v1, "ARTIST_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    const-string v1, "TRACK_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    move v1, v7

    goto/16 :goto_20

    :cond_c8
    move v1, v8

    goto/16 :goto_20

    :cond_cb
    const-string v1, "ARTIST_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "ARTIST_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_34

    :cond_db
    const-string v1, "TRACK_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "TRACK_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_46

    :cond_eb
    const-string v1, "trackLength"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_180

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "trackLength"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5a

    :cond_ff
    const-string v1, "isplaying"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isplaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_72

    :cond_113
    const-string v1, "isPlaying"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isPlaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_72

    :cond_127
    if-eqz v0, :cond_14f

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_136

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v6, v0

    goto/16 :goto_8b

    :cond_136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14f

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14c

    const-string v1, "playing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    :cond_14c
    move v6, v7

    goto/16 :goto_8b

    :cond_14f
    move v6, v8

    goto/16 :goto_8b

    :cond_152
    sget-object v1, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    invoke-virtual {v1, v0}, Lcom/bbm/m/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    iput-boolean v6, v0, Lcom/bbm/m/c;->d:Z

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_168

    sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    iput-wide v4, v0, Lcom/bbm/m/c;->c:J

    :cond_168
    iget-object v0, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    invoke-static {}, Lcom/bbm/m/a;->c()V

    sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;

    iget-boolean v0, v0, Lcom/bbm/m/c;->d:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/bbm/m/b;->a:Lcom/bbm/m/a;

    invoke-static {p2}, Lcom/bbm/m/a;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    sput-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_17e} :catch_a9

    goto/16 :goto_c

    :cond_180
    move-object v1, v0

    goto/16 :goto_5a
.end method
