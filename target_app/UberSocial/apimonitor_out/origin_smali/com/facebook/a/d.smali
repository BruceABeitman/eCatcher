.class public Lcom/facebook/a/d;
.super Ljava/lang/Throwable;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/a/d;->b:I

    iput-object p3, p0, Lcom/facebook/a/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/facebook/a/d;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
