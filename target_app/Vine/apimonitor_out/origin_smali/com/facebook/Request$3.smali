.class final Lcom/facebook/Request$3;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/Request$GraphPlaceListCallback;


# direct methods
.method constructor <init>(Lcom/facebook/Request$GraphPlaceListCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/Request$3;->val$callback:Lcom/facebook/Request$GraphPlaceListCallback;

    const-class v1, Lcom/facebook/model/GraphPlace;

    #calls: Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    invoke-static {p1, v1}, Lcom/facebook/Request;->access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/Request$GraphPlaceListCallback;->onCompleted(Ljava/util/List;Lcom/facebook/Response;)V

    :cond_f
    return-void
.end method