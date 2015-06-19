.class Lcom/glympse/android/lib/ht;
.super Ljava/lang/Object;
.source "SinkLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private st:Lcom/glympse/android/lib/hs;

.field private su:Lcom/glympse/android/lite/GGlympseLite;

.field private sv:I

.field private sw:Ljava/lang/Object;

.field private sx:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/hs;Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ht;->st:Lcom/glympse/android/lib/hs;

    iput-object p2, p0, Lcom/glympse/android/lib/ht;->su:Lcom/glympse/android/lite/GGlympseLite;

    iput p3, p0, Lcom/glympse/android/lib/ht;->sv:I

    iput-object p4, p0, Lcom/glympse/android/lib/ht;->sw:Ljava/lang/Object;

    iput-object p5, p0, Lcom/glympse/android/lib/ht;->sx:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/ht;->st:Lcom/glympse/android/lib/hs;

    iget-object v1, p0, Lcom/glympse/android/lib/ht;->su:Lcom/glympse/android/lite/GGlympseLite;

    iget v2, p0, Lcom/glympse/android/lib/ht;->sv:I

    iget-object v3, p0, Lcom/glympse/android/lib/ht;->sw:Ljava/lang/Object;

    iget-object v4, p0, Lcom/glympse/android/lib/ht;->sx:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hs;->a(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
