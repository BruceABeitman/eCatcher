.class Lcom/glympse/android/lib/hn;
.super Ljava/lang/Object;
.source "ServerPost.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private lf:Lcom/glympse/android/lib/GServerPost;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GServerPost;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/hn;->lf:Lcom/glympse/android/lib/GServerPost;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hn;->lf:Lcom/glympse/android/lib/GServerPost;

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->doPost()V

    return-void
.end method
