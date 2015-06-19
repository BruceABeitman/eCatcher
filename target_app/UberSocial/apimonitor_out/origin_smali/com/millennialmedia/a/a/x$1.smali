.class final enum Lcom/millennialmedia/a/a/x$1;
.super Lcom/millennialmedia/a/a/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/x;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/a/a/x;-><init>(Ljava/lang/String;ILcom/millennialmedia/a/a/x$1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/millennialmedia/a/a/m;
    .registers 3

    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
