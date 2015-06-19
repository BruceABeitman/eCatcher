.class final Lcom/bbm/ui/fi;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"

# interfaces
.implements Lcom/bbm/ui/fj;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareVoicenoteView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/fi;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/bbm/ui/fi;->a:Lcom/bbm/ui/QuickShareVoicenoteView;

    invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->f(Lcom/bbm/ui/QuickShareVoicenoteView;)Lcom/bbm/util/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/fg;->a()V

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    iput-object v2, v0, Lcom/bbm/util/fg;->a:Lcom/google/b/a/l;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH.mm.ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Voice Note-%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "amr"

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/bbm/util/fg;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-static {v3}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    iput-object v2, v0, Lcom/bbm/util/fg;->d:Lcom/google/b/a/l;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :try_start_84
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/util/fg;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bbm/util/fg;->c:J

    invoke-virtual {v0}, Lcom/bbm/util/fg;->c()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_96} :catch_97

    :goto_96
    return-void

    :catch_97
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_96
.end method
