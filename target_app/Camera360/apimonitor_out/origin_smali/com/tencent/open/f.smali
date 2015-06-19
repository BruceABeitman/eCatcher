.class public Lcom/tencent/open/f;
.super Lcom/tencent/map/a/a/b;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/d$a;


# direct methods
.method public constructor <init>(Lcom/tencent/open/d$a;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/tencent/map/a/a/b;-><init>(IIII)V

    iput-object p1, p0, Lcom/tencent/open/f;->a:Lcom/tencent/open/d$a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const-string/jumbo v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location: onStatusUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/map/a/a/b;->a(I)V

    return-void
.end method

.method public a(Lcom/tencent/map/a/a/d;)V
    .registers 5

    const-string/jumbo v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location: onLocationUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V

    if-nez p1, :cond_20

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "passive"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/tencent/map/a/a/d;->b:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v1, p1, Lcom/tencent/map/a/a/d;->c:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget-object v1, p0, Lcom/tencent/open/f;->a:Lcom/tencent/open/d$a;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/tencent/open/f;->a:Lcom/tencent/open/d$a;

    invoke-interface {v1, v0}, Lcom/tencent/open/d$a;->onLocationUpdate(Landroid/location/Location;)V

    goto :goto_1f
.end method

.method public a([BI)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/tencent/map/a/a/b;->a([BI)V

    const-string/jumbo v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location: onLocationDataUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
