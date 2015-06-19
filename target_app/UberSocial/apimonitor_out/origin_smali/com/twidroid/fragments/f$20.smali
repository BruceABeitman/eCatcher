.class Lcom/twidroid/fragments/f$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->d(Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/fragments/f$20;->c:Lcom/twidroid/fragments/f;

    iput-object p2, p0, Lcom/twidroid/fragments/f$20;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twidroid/fragments/f$20;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Lcom/twidroid/fragments/o;

    iget-object v1, p0, Lcom/twidroid/fragments/f$20;->c:Lcom/twidroid/fragments/f;

    invoke-direct {v0, v1}, Lcom/twidroid/fragments/o;-><init>(Lcom/twidroid/fragments/f;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/fragments/f$20;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/twidroid/fragments/f$20;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/o;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
