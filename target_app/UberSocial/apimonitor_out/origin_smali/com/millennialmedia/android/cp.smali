.class Lcom/millennialmedia/android/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "packageName"

.field static final b:Ljava/lang/String; = "internalId"

.field static final c:Ljava/lang/String; = "intentType"

.field public static final d:Ljava/lang/String; = "geo"

.field public static final e:Ljava/lang/String; = "browser"

.field public static final f:Ljava/lang/String; = "sms"

.field public static final g:Ljava/lang/String; = "tel"

.field public static final h:Ljava/lang/String; = "market"

.field public static final i:Ljava/lang/String; = "streamingVideo"

.field public static final j:Ljava/lang/String; = "email"

.field public static final k:Ljava/lang/String; = "calendar"

.field protected static final l:Ljava/lang/String; = null

.field private static final m:Ljava/lang/String; = "error"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/millennialmedia/android/cp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/cp;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;J)V
    .registers 5

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_10
    return-void
.end method

.method private static final a(Landroid/content/Context;Landroid/content/Intent;J)V
    .registers 8

    if-eqz p0, :cond_66

    const-string v0, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v0, -0x4

    cmp-long v0, p2, v0

    if-eqz v0, :cond_12

    const-string v0, "internalId"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_12
    const-string v0, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, " Type[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    const-string v1, "MMSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@ Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_66
    return-void

    :cond_67
    const-string v0, ""

    goto :goto_33
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_18
    return-void
.end method

.method static a(Lcom/millennialmedia/android/bp;)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/millennialmedia/android/cp$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$2;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_2
.end method

.method static a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
    .registers 6

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/millennialmedia/android/cp$7;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/cp$7;-><init>(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v1, v0, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_9
.end method

.method protected static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "Logging event to: %s"

    invoke-static {v0, p0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/millennialmedia/android/cp$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b(Lcom/millennialmedia/android/bp;)V
    .registers 5

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/millennialmedia/android/cp$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$3;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_9
.end method

.method static c(Lcom/millennialmedia/android/bp;)V
    .registers 5

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    :cond_20
    invoke-static {p0}, Lcom/millennialmedia/android/cp;->d(Lcom/millennialmedia/android/bp;)V

    goto :goto_9
.end method

.method static d(Lcom/millennialmedia/android/bp;)V
    .registers 4

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/millennialmedia/android/cp$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$4;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;J)V

    goto :goto_9
.end method

.method static e(Lcom/millennialmedia/android/bp;)V
    .registers 5

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/millennialmedia/android/cp$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$5;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_9
.end method

.method static f(Lcom/millennialmedia/android/bp;)V
    .registers 6

    if-nez p0, :cond_a

    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/millennialmedia/android/cp$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cp$6;-><init>(Lcom/millennialmedia/android/bp;)V

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/millennialmedia/android/co;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v1, v2, v3, v4}, Lcom/millennialmedia/android/cp;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_9
.end method
