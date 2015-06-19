.class Lcom/millennialmedia/a/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/f;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/a/a/f$1;->a:Lcom/millennialmedia/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/f$1;->a:Lcom/millennialmedia/a/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
