.class final Lcom/facebook/internal/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/c;->a()V
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lcom/facebook/internal/c;


# direct methods
.method constructor <init>(Lcom/facebook/internal/c;[Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/internal/c$2;->b:Lcom/facebook/internal/c;

    iput-object p2, p0, Lcom/facebook/internal/c$2;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v1, p0, Lcom/facebook/internal/c$2;->a:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
