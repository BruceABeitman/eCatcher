.class Lcom/pinguo/share/ShareAccess$1;
.super Ljava/lang/Object;
.source "ShareAccess.java"

# interfaces
.implements Lcom/pinguo/lib/location/IPGLocationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ShareAccess;->getLocation(DDLcom/pinguo/share/ShareAccess$LocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/lib/location/IPGLocationManager$Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$locationCallback:Lcom/pinguo/share/ShareAccess$LocationCallback;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ShareAccess$LocationCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ShareAccess$1;->val$locationCallback:Lcom/pinguo/share/ShareAccess$LocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finallyExecute()V
    .registers 1

    return-void
.end method

.method public bridge synthetic postLocExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/share/ShareAccess$1;->postLocExecute(Ljava/lang/String;)V

    return-void
.end method

.method public postLocExecute(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/share/ShareAccess$1;->val$locationCallback:Lcom/pinguo/share/ShareAccess$LocationCallback;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/share/ShareAccess$1;->val$locationCallback:Lcom/pinguo/share/ShareAccess$LocationCallback;

    invoke-interface {v0, p1}, Lcom/pinguo/share/ShareAccess$LocationCallback;->successGetLocation(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public preLocExecute()V
    .registers 1

    return-void
.end method
