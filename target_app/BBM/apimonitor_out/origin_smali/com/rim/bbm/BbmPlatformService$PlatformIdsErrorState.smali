.class public final Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"


# instance fields
.field public ids_error:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;

    iget v2, p0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I

    iget v3, p1, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/rim/bbm/BbmPlatformService$PlatformIdsErrorState;->ids_error:I

    return v0
.end method
