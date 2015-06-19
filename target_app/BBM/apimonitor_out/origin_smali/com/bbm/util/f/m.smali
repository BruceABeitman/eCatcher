.class final Lcom/bbm/util/f/m;
.super Ljava/lang/Object;
.source "TimestampScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/util/f/l;


# direct methods
.method constructor <init>(Lcom/bbm/util/f/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/f/m;->a:Lcom/bbm/util/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/f/m;->a:Lcom/bbm/util/f/l;

    iget-object v0, v0, Lcom/bbm/util/f/l;->a:Lcom/bbm/util/f/k;

    invoke-static {v0}, Lcom/bbm/util/f/k;->a(Lcom/bbm/util/f/k;)V

    return-void
.end method
