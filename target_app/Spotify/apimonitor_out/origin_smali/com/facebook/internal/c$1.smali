.class final Lcom/facebook/internal/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/internal/c;


# direct methods
.method constructor <init>(Lcom/facebook/internal/c;JLjava/io/File;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/internal/c$1;->d:Lcom/facebook/internal/c;

    iput-wide p2, p0, Lcom/facebook/internal/c$1;->a:J

    iput-object p4, p0, Lcom/facebook/internal/c$1;->b:Ljava/io/File;

    iput-object p5, p0, Lcom/facebook/internal/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/internal/c$1;->a:J

    iget-object v2, p0, Lcom/facebook/internal/c$1;->d:Lcom/facebook/internal/c;

    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lcom/facebook/internal/c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    iget-object v0, p0, Lcom/facebook/internal/c$1;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/facebook/internal/c$1;->d:Lcom/facebook/internal/c;

    iget-object v1, p0, Lcom/facebook/internal/c$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/c$1;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/c;->a(Lcom/facebook/internal/c;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_15
.end method
