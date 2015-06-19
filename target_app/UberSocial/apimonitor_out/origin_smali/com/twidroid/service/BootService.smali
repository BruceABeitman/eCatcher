.class public Lcom/twidroid/service/BootService;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lcom/twidroid/d/v;

.field protected b:Landroid/app/PendingIntent;

.field final c:Ljava/lang/String;

.field d:Lcom/twidroid/model/twitter/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "TwidroydBootService"

    iput-object v0, p0, Lcom/twidroid/service/BootService;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    new-instance v0, Lcom/twidroid/service/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twidroid/service/a;-><init>(Lcom/twidroid/service/BootService;Lcom/twidroid/service/BootService$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/service/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    const-string v0, "TwidroydBootService"

    const-string v1, "::onReceive android.intent.action.BOOT_COMPLETED finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
