.class Lcom/twidroid/billing/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/billing/j;->b(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/billing/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/twidroid/billing/j;


# direct methods
.method constructor <init>(Lcom/twidroid/billing/j;Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/twidroid/billing/j$1;->f:Lcom/twidroid/billing/j;

    iput-object p2, p0, Lcom/twidroid/billing/j$1;->a:Lcom/twidroid/billing/h;

    iput-object p3, p0, Lcom/twidroid/billing/j$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/twidroid/billing/j$1;->c:I

    iput-wide p5, p0, Lcom/twidroid/billing/j$1;->d:J

    iput-object p7, p0, Lcom/twidroid/billing/j$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/billing/j$1;->f:Lcom/twidroid/billing/j;

    iget-object v1, p0, Lcom/twidroid/billing/j$1;->a:Lcom/twidroid/billing/h;

    iget-object v2, p0, Lcom/twidroid/billing/j$1;->b:Ljava/lang/String;

    iget v3, p0, Lcom/twidroid/billing/j$1;->c:I

    iget-wide v4, p0, Lcom/twidroid/billing/j$1;->d:J

    iget-object v6, p0, Lcom/twidroid/billing/j$1;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/billing/j;->a(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
