.class public final Lcom/userzoom/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Luserzoom/com/a;


# direct methods
.method public constructor <init>(Luserzoom/com/a;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/bq;->a:Luserzoom/com/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/userzoom/bq;->a:Luserzoom/com/a;

    check-cast p2, Lcom/userzoom/bn;

    invoke-virtual {p2}, Lcom/userzoom/bn;->a()Luserzoom/com/UzEventsFeatureService;

    move-result-object v1

    invoke-static {v0, v1}, Luserzoom/com/a;->a(Luserzoom/com/a;Luserzoom/com/UzEventsFeatureService;)Luserzoom/com/UzEventsFeatureService;

    const-string v0, "UzLibInstance"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/bq;->a:Luserzoom/com/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luserzoom/com/a;->a(Luserzoom/com/a;Luserzoom/com/UzEventsFeatureService;)Luserzoom/com/UzEventsFeatureService;

    const-string v0, "UzLibInstance"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
