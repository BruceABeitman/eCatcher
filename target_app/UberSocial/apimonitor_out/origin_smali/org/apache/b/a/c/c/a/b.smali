.class Lorg/apache/b/a/c/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/b/a/c/c/a/b;->a:Ljava/lang/String;

    iput p2, p0, Lorg/apache/b/a/c/c/a/b;->b:I

    iput p3, p0, Lorg/apache/b/a/c/c/a/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/c/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/c/c/a/b;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/c/c/a/b;->c:I

    return v0
.end method
