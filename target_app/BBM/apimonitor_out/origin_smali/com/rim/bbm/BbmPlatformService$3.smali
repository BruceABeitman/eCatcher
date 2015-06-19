.class final Lcom/rim/bbm/BbmPlatformService$3;
.super Ljava/lang/Object;
.source "BbmPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$countryCode:Ljava/lang/String;

.field final synthetic val$dateOfBirth:Ljava/lang/String;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$ecoid:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$error:I

.field final synthetic val$firstName:Ljava/lang/String;

.field final synthetic val$lastName:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    iput-object p1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$username:Ljava/lang/String;

    iput-object p2, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$ecoid:Ljava/lang/String;

    iput-object p3, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$displayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$firstName:Ljava/lang/String;

    iput-object p5, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$lastName:Ljava/lang/String;

    iput-object p6, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$email:Ljava/lang/String;

    iput-object p7, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$dateOfBirth:Ljava/lang/String;

    iput-object p8, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$countryCode:Ljava/lang/String;

    iput p9, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;

    invoke-direct {v0}, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;-><init>()V

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$username:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$ecoid:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->ecoid:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->screenname:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$firstName:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->firstname:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$lastName:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->lastname:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$email:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->email:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$dateOfBirth:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->dateofbirth:Ljava/lang/String;

    iget-object v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$countryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->countrycode:Ljava/lang/String;

    iget v1, p0, Lcom/rim/bbm/BbmPlatformService$3;->val$error:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_36

    sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_SUCCESS:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    :goto_2e
    invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->access$000()Lcom/rim/bbm/BbmPlatformService$IDSDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/rim/bbm/BbmPlatformService$IDSDelegate;->bbidPropertiesUpdated(Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;)V

    return-void

    :cond_36
    sget-object v1, Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;->GET_FAILURE:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    iput-object v1, v0, Lcom/rim/bbm/BbmPlatformService$BbidPropertiesState;->getter_state:Lcom/rim/bbm/BbmPlatformService$GETTER_STATE;

    goto :goto_2e
.end method
