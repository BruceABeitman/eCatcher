.class Lcom/glympse/android/lib/as;
.super Ljava/lang/Object;
.source "DataEvent.java"

# interfaces
.implements Lcom/glympse/android/api/GDataEvent;


# instance fields
.field private jy:Lcom/glympse/android/api/GTicket;

.field private jz:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GDataRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/hal/GVector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/api/GTicket;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GDataRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/as;->jy:Lcom/glympse/android/api/GTicket;

    iput-object p2, p0, Lcom/glympse/android/lib/as;->jz:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public getProperties()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GDataRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/as;->jz:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getTicket()Lcom/glympse/android/api/GTicket;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/as;->jy:Lcom/glympse/android/api/GTicket;

    return-object v0
.end method
