.class Lcom/ubermedia/net/b/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/net/b/a;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/net/b/a;


# direct methods
.method constructor <init>(Lcom/ubermedia/net/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b/a$2;->a:Lcom/ubermedia/net/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b/a$2;->a:Lcom/ubermedia/net/b/a;

    invoke-virtual {v0}, Lcom/ubermedia/net/b/a;->a()V

    return-void
.end method
