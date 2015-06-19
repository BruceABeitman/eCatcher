.class public Lorg/apache/b/a/c/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Lorg/apache/b/a/c/b/a/f;

.field public h:Lorg/apache/b/a/c/b/a/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Lorg/apache/b/a/c/b/a/f;
    .registers 2

    new-instance v0, Lorg/apache/b/a/c/b/a/f;

    invoke-direct {v0}, Lorg/apache/b/a/c/b/a/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/b/a/f;->f:Ljava/lang/String;

    return-object v0
.end method
