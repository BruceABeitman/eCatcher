.class Lcom/instagram/realtimeclient/RealtimeStore$1;
.super Ljava/lang/Object;
.source "RealtimeStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/realtimeclient/RealtimeOperation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeStore;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeStore;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeStore$1;->this$0:Lcom/instagram/realtimeclient/RealtimeStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/instagram/realtimeclient/RealtimeOperation;Lcom/instagram/realtimeclient/RealtimeOperation;)I
    .registers 5

    iget-object v0, p1, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lcom/instagram/realtimeclient/RealtimeOperation;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/instagram/realtimeclient/RealtimeOperation;

    check-cast p2, Lcom/instagram/realtimeclient/RealtimeOperation;

    invoke-virtual {p0, p1, p2}, Lcom/instagram/realtimeclient/RealtimeStore$1;->compare(Lcom/instagram/realtimeclient/RealtimeOperation;Lcom/instagram/realtimeclient/RealtimeOperation;)I

    move-result v0

    return v0
.end method
