.class Lcom/millennialmedia/android/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/millennialmedia/android/az;)Landroid/content/Intent;
    .registers 13

    const/4 v1, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_7

    :goto_6
    return-object v1

    :cond_7
    iget-object v3, p0, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    iget-object v0, p0, Lcom/millennialmedia/android/az;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_23e

    if-eqz v3, :cond_23b

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23b

    const-string v1, "market"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "Utils"

    const-string v2, "Creating Android Market intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "market"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    :goto_39
    if-eqz v0, :cond_22a

    const-string v1, "Utils"

    const-string v2, "%s resolved to Intent: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v9

    aput-object v0, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    move-object v1, v0

    goto :goto_6

    :cond_4f
    const-string v1, "rtsp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    const-string v1, "Utils"

    const-string v2, "Creating streaming video player intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_39

    :cond_71
    const-string v1, "tel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "Utils"

    const-string v2, "Creating telephone intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "tel"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_39

    :cond_90
    const-string v1, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string v1, "Utils"

    const-string v2, "Creating txt message intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const-string v1, ""

    const-string v2, "?body="

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v11, :cond_bf

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_bf

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    const/16 v6, 0x3b

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_bf
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-ne v5, v11, :cond_ea

    add-int/lit8 v1, v5, 0x6

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_ea
    const-string v1, "sms"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    goto/16 :goto_39

    :cond_f4
    const-string v1, "mailto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10d

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "email"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_10d
    const-string v1, "geo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12d

    const-string v1, "Utils"

    const-string v2, "Creating Google Maps intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "geo"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_12d
    const-string v1, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14d

    const-string v1, "Utils"

    const-string v2, "Creating launch browser intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_14d
    const-string v1, "mmbrowser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18d

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_171

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_171

    const-string v2, "//"

    const-string v4, "://"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_171
    const-string v2, "Utils"

    const-string v4, "MMBrowser - Creating launch browser intent."

    invoke-static {v2, v4}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v2

    goto/16 :goto_39

    :cond_18d
    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_211

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d5

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    :cond_1b3
    const-string v1, "Utils"

    const-string v2, "Creating video player intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "class"

    const-string v4, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "streamingVideo"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v2, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_1d5
    invoke-virtual {p0}, Lcom/millennialmedia/android/az;->b()Z

    move-result v1

    if-eqz v1, :cond_1f9

    const-string v1, "Utils"

    const-string v2, "Creating launch overlay intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "class"

    const-class v2, Lcom/millennialmedia/android/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_1f9
    const-string v1, "Utils"

    const-string v2, "Creating launch browser intent."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "browser"

    iget-wide v4, p0, Lcom/millennialmedia/android/az;->e:J

    invoke-static {v0, v1, v4, v5}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_211
    const-string v0, "Utils"

    const-string v1, "Creating intent for unrecognized URI. %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_39

    :cond_22a
    const-string v1, "Utils"

    const-string v2, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    :cond_23b
    move-object v0, v1

    goto/16 :goto_39

    :cond_23e
    move-object v0, v1

    goto/16 :goto_4d
.end method

.method static a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static c(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_9

    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    invoke-static {p0, p1}, Lcom/millennialmedia/android/dj;->d(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "content.once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_3c
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    return-void
.end method
