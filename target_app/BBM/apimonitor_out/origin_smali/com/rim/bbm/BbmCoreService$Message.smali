.class Lcom/rim/bbm/BbmCoreService$Message;
.super Ljava/lang/Object;
.source "BbmCoreService.java"


# instance fields
.field private final m_msg:[B

.field private final m_type:I

.field final synthetic this$0:Lcom/rim/bbm/BbmCoreService;


# direct methods
.method public constructor <init>(Lcom/rim/bbm/BbmCoreService;Lcom/rim/bbm/BbmCoreService$MessageType;[B)V
    .registers 5

    iput-object p1, p0, Lcom/rim/bbm/BbmCoreService$Message;->this$0:Lcom/rim/bbm/BbmCoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Lcom/rim/bbm/BbmCoreService$MessageType;->ordinal:I

    iput v0, p0, Lcom/rim/bbm/BbmCoreService$Message;->m_type:I

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/rim/bbm/BbmCoreService$Message;->m_msg:[B

    return-void
.end method
