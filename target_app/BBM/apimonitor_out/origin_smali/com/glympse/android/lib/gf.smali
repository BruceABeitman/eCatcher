.class Lcom/glympse/android/lib/gf;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Lcom/glympse/android/lib/bt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/glympse/android/lib/bt",
        "<TY;>;"
    }
.end annotation


# instance fields
.field private qA:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TY;"
        }
    .end annotation
.end field

.field private qB:Lcom/glympse/android/lib/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bt",
            "<TY;>;"
        }
    .end annotation
.end field

.field private qC:Lcom/glympse/android/lib/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/lib/bt",
            "<TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/bt;Ljava/lang/Object;Lcom/glympse/android/lib/bt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;TY;",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/gf;->qA:Ljava/lang/Object;

    iput-object p3, p0, Lcom/glympse/android/lib/gf;->qB:Lcom/glympse/android/lib/bt;

    iput-object p1, p0, Lcom/glympse/android/lib/gf;->qC:Lcom/glympse/android/lib/bt;

    return-void
.end method


# virtual methods
.method public a(Lcom/glympse/android/lib/bt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/gf;->qB:Lcom/glympse/android/lib/bt;

    return-void
.end method

.method public b(Lcom/glympse/android/lib/bt;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/gf;->qC:Lcom/glympse/android/lib/bt;

    return-void
.end method

.method public be()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gf;->qA:Ljava/lang/Object;

    return-object v0
.end method

.method public bf()Lcom/glympse/android/lib/bt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gf;->qB:Lcom/glympse/android/lib/bt;

    return-object v0
.end method

.method public bg()Lcom/glympse/android/lib/bt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/lib/bt",
            "<TY;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gf;->qC:Lcom/glympse/android/lib/bt;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/glympse/android/lib/gf;->qA:Ljava/lang/Object;

    return-void
.end method
