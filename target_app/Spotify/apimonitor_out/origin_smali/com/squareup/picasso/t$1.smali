.class final Lcom/squareup/picasso/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/picasso/t;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;Lcom/squareup/picasso/Downloader;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/picasso/t;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/t;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/picasso/t$1;->a:Lcom/squareup/picasso/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "INTERNET permission is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
