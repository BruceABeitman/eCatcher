.class final Lcom/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/a/cu;

.field private synthetic b:Lcom/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/a/b;Lcom/a/a/a/cu;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/a/c;->b:Lcom/a/a/a/b;

    iput-object p2, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/c;->b:Lcom/a/a/a/b;

    iget-object v1, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/cu;

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Lcom/a/a/a/b;Ljava/lang/Object;)V

    return-void
.end method
