.class final Lcom/ford/syncV4/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ford/syncV4/b/e;-><init>(Ljava/lang/String;Ljava/util/Comparator;Lcom/ford/syncV4/b/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ford/syncV4/b/e;


# direct methods
.method constructor <init>(Lcom/ford/syncV4/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/ford/syncV4/b/e$1;->a:Lcom/ford/syncV4/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/b/e$1;->a:Lcom/ford/syncV4/b/e;

    invoke-static {v0}, Lcom/ford/syncV4/b/e;->a(Lcom/ford/syncV4/b/e;)V

    return-void
.end method
