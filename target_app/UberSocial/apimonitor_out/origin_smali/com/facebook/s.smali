.class public Lcom/facebook/s;
.super Lcom/facebook/t;
.source "SourceFile"


# static fields
.field static final a:J = 0x1L


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/s;->c:I

    iput-object p3, p0, Lcom/facebook/s;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/facebook/s;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/s;->d:Ljava/lang/String;

    return-object v0
.end method
