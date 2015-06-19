.class public Lcom/millennialmedia/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"

.field public static final b:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final c:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final d:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final e:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final f:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final h:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final i:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

.field public static final j:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final k:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final l:Ljava/lang/String; = "millennialmedia.action.ACTION_AD_SINGLE_TAP"

.field private static final m:Ljava/lang/String; = "MMBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Success."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/android/bo;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_1a

    const-string v0, "MMBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media started intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public b(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Failure."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay opened."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay closed."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch started caching."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch finished caching."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch failed."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media display started."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/millennialmedia/android/bo;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay Tap."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Tap."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-wide/16 v6, -0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "internalId"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    cmp-long v1, v3, v6

    if-eqz v1, :cond_2c

    invoke-static {v3, v4}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;

    move-result-object v0

    :cond_2c
    const-string v3, "MMBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@ Intent - Ad in receiver = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_54

    const-string v1, " null"

    :goto_3d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->c(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_59
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->d(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_65
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->i(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_71
    const-string v1, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->j(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_7d
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->h(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_89
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->g(Lcom/millennialmedia/android/bo;)V

    goto :goto_1d

    :cond_95
    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->f(Lcom/millennialmedia/android/bo;)V

    goto/16 :goto_1d

    :cond_a2
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->e(Lcom/millennialmedia/android/bo;)V

    goto/16 :goto_1d

    :cond_af
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->b(Lcom/millennialmedia/android/bo;)V

    goto/16 :goto_1d

    :cond_bc
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMBroadcastReceiver;->a(Lcom/millennialmedia/android/bo;)V

    goto/16 :goto_1d

    :cond_c9
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "intentType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->a(Lcom/millennialmedia/android/bo;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
