.class Lcom/glympse/android/lib/t;
.super Ljava/lang/Object;
.source "ArrayAdapter.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TTO;>;"
    }
.end annotation


# instance fields
.field private hG:Lcom/glympse/android/lib/bp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;"
        }
    .end annotation
.end field

.field private hH:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<TFROM;>;"
        }
    .end annotation
.end field

.field final synthetic hI:Lcom/glympse/android/lib/s;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/s;Ljava/util/Enumeration;Lcom/glympse/android/lib/bp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<TFROM;>;",
            "Lcom/glympse/android/lib/bp",
            "<TFROM;TTO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/t;->hI:Lcom/glympse/android/lib/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;

    iput-object p3, p0, Lcom/glympse/android/lib/t;->hG:Lcom/glympse/android/lib/bp;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/t;->hG:Lcom/glympse/android/lib/bp;

    iget-object v1, p0, Lcom/glympse/android/lib/t;->hH:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/bp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
