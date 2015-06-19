.class Lcom/spotify/cosmos/android/Resolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/cosmos/android/Resolver;->deliverOnConnected(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/cosmos/android/Resolver;

.field final synthetic val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

.field final synthetic val$resolver:Lcom/spotify/cosmos/android/Resolver;


# direct methods
.method constructor <init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;Lcom/spotify/cosmos/android/Resolver;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver$1;->this$0:Lcom/spotify/cosmos/android/Resolver;

    iput-object p2, p0, Lcom/spotify/cosmos/android/Resolver$1;->val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iput-object p3, p0, Lcom/spotify/cosmos/android/Resolver$1;->val$resolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$1;->val$callback:Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;

    iget-object v1, p0, Lcom/spotify/cosmos/android/Resolver$1;->val$resolver:Lcom/spotify/cosmos/android/Resolver;

    invoke-interface {v0, v1}, Lcom/spotify/cosmos/android/Resolver$ConnectionCallback;->onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V

    return-void
.end method
