.class public final Lcom/rim/bbm/BbmPlatformService$BbmTokenState;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"


# instance fields
.field public getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

.field public secret:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    sget-object v0, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_PENDING:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    iput-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

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
    check-cast p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;

    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    iget-object v3, p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    iget-object v3, p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_2b
    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    if-nez v2, :cond_2b

    :cond_31
    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_3f
    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p1, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3f
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->secret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$BbmTokenState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    invoke-virtual {v1}, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    return v0

    :cond_26
    move v0, v1

    goto :goto_b

    :cond_28
    move v0, v1

    goto :goto_17
.end method
