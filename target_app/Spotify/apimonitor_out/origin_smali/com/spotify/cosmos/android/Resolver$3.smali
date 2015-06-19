.class Lcom/spotify/cosmos/android/Resolver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/cosmos/android/Resolver;->notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/cosmos/android/Resolver;

.field final synthetic val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

.field final synthetic val$error:Lcom/spotify/cosmos/android/Resolver$ConnectionError;


# direct methods
.method constructor <init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver$3;->this$0:Lcom/spotify/cosmos/android/Resolver;

    iput-object p2, p0, Lcom/spotify/cosmos/android/Resolver$3;->val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iput-object p3, p0, Lcom/spotify/cosmos/android/Resolver$3;->val$error:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$3;->val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver$3;->this$0:Lcom/spotify/cosmos/android/Resolver;

    iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver$3;->val$error:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    invoke-interface {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;->onServiceConnectionFailed(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V

    return-void
.end method
