.class Lcom/twidroid/service/StreamingService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/StreamingService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/StreamingService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/StreamingService$2;->a:Lcom/twidroid/service/StreamingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$2;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->b(Lcom/twidroid/service/StreamingService;)V

    return-void
.end method
