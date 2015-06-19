.class Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->postError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

.field final synthetic val$cause:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

    iput-object p2, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->val$error:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->val$cause:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->this$0:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;

    iget-object v1, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->val$error:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$2;->val$cause:Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;->onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V

    return-void
.end method
