.class Lcom/millennialmedia/android/u$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/u;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/dn;

.field final synthetic b:Lcom/millennialmedia/android/u;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/u;Lcom/millennialmedia/android/dn;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/u$3;->b:Lcom/millennialmedia/android/u;

    iput-object p2, p0, Lcom/millennialmedia/android/u$3;->a:Lcom/millennialmedia/android/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/millennialmedia/android/cg;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/u$3;->a:Lcom/millennialmedia/android/dn;

    invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->t()V

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/u$3;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    return-object v0
.end method
