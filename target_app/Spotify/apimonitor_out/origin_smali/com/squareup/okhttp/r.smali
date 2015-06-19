.class public final Lcom/squareup/okhttp/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p3, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "userAgent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/squareup/okhttp/r;->a:Ljava/lang/String;

    iput p2, p0, Lcom/squareup/okhttp/r;->b:I

    iput-object p3, p0, Lcom/squareup/okhttp/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;

    return-void
.end method
