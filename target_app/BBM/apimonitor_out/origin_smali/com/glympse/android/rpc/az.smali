.class Lcom/glympse/android/rpc/az;
.super Ljava/lang/Object;
.source "PhoneFavoriteEventListener.java"

# interfaces
.implements Lcom/glympse/android/hal/GPhoneFavoriteListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private vj:Lcom/glympse/android/rpc/GMessageGateway;

.field private vk:Lcom/glympse/android/rpc/GConnection;

.field private vp:Lcom/glympse/android/hal/GPhoneFavoriteProvider;


# direct methods
.method private constructor <init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/hal/GPhoneFavoriteProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/rpc/az;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iput-object p2, p0, Lcom/glympse/android/rpc/az;->vk:Lcom/glympse/android/rpc/GConnection;

    iput-object p3, p0, Lcom/glympse/android/rpc/az;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p4, p0, Lcom/glympse/android/rpc/az;->vp:Lcom/glympse/android/hal/GPhoneFavoriteProvider;

    return-void
.end method

.method public static a(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    invoke-interface {p2}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createPhoneFavoriteProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GPhoneFavoriteProvider;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/rpc/az;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/glympse/android/rpc/az;-><init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/hal/GPhoneFavoriteProvider;)V

    invoke-interface {p2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GPhoneFavoriteProvider;->start(Lcom/glympse/android/hal/GPhoneFavoriteListener;Lcom/glympse/android/core/GHandler;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GPhoneFavoriteProvider;->refresh(Z)V

    return-void
.end method


# virtual methods
.method public phoneFavoritesReady(Lcom/glympse/android/hal/GPhoneFavoriteProvider;)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/rpc/az;->vp:Lcom/glympse/android/hal/GPhoneFavoriteProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GPhoneFavoriteProvider;->getPhoneFavorites()Lcom/glympse/android/core/GArray;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/rpc/az;->vp:Lcom/glympse/android/hal/GPhoneFavoriteProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GPhoneFavoriteProvider;->stop()V

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Lcom/glympse/android/rpc/af;

    invoke-direct {v1}, Lcom/glympse/android/rpc/af;-><init>()V

    iget-object v2, p0, Lcom/glympse/android/rpc/az;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iget-object v3, p0, Lcom/glympse/android/rpc/az;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v4, p0, Lcom/glympse/android/rpc/az;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {v4, v0}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/glympse/android/rpc/af;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    goto :goto_13
.end method
