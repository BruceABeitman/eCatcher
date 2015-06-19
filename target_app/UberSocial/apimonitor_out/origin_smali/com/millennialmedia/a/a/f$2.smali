.class Lcom/millennialmedia/a/a/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/f;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/a/a/f$2;->a:Lcom/millennialmedia/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/f$2;->a:Lcom/millennialmedia/a/a/f;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/m;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/f$2;->a:Lcom/millennialmedia/a/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method
