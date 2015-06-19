.class public Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;
.super Ljava/lang/Thread;
.source "UsersSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/UsersSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/UsersSearch;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/UsersSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;->this$0:Lcom/facebook/katana/service/api/methods/UsersSearch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;->this$0:Lcom/facebook/katana/service/api/methods/UsersSearch;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #calls: Lcom/facebook/katana/service/api/methods/UsersSearch;->saveSearchResults(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/UsersSearch;->access$0(Lcom/facebook/katana/service/api/methods/UsersSearch;Ljava/util/List;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;->this$0:Lcom/facebook/katana/service/api/methods/UsersSearch;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/katana/service/api/methods/UsersSearch;->onComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
