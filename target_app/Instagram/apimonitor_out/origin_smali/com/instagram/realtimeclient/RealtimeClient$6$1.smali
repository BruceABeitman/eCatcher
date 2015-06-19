.class Lcom/instagram/realtimeclient/RealtimeClient$6$1;
.super Ljava/lang/Object;
.source "RealtimeClient.java"

# interfaces
.implements Lcom/facebook/k/a/a;


# instance fields
.field final synthetic this$1:Lcom/instagram/realtimeclient/RealtimeClient$6;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient$6;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$6$1;->this$1:Lcom/instagram/realtimeclient/RealtimeClient$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public badVerifyInvoked(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
