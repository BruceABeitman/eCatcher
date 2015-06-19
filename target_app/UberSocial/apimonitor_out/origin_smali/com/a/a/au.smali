.class final Lcom/a/a/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/ah;


# instance fields
.field private synthetic a:Lcom/a/a/u;


# direct methods
.method constructor <init>(Lcom/a/a/u;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/au;->a:Lcom/a/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/a/a/au;->a:Lcom/a/a/u;

    invoke-interface {v0}, Lcom/a/a/u;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/au;->a:Lcom/a/a/u;

    invoke-interface {v0}, Lcom/a/a/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/au;->a:Lcom/a/a/u;

    invoke-interface {v0}, Lcom/a/a/u;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
