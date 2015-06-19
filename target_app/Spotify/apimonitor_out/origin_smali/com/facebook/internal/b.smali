.class public final Lcom/facebook/internal/b;
.super Lcom/facebook/v;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/internal/b;->b:Z

    return v0
.end method
