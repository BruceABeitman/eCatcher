.class Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->postResult(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

.field final synthetic val$parsedObject:Ljava/lang/Object;

.field final synthetic val$response:Lcom/spotify/cosmos/router/Response;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

    iput-object p2, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->val$response:Lcom/spotify/cosmos/router/Response;

    iput-object p3, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->val$parsedObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

    iget-object v1, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->val$response:Lcom/spotify/cosmos/router/Response;

    iget-object v2, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$1;->val$parsedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V

    return-void
.end method
