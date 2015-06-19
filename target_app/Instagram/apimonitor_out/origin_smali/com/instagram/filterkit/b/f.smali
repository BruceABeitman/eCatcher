.class public final Lcom/instagram/filterkit/b/f;
.super Lcom/instagram/filterkit/b/e;
.source "IgGLUniform.java"


# instance fields
.field private a:Ljava/nio/IntBuffer;

.field private b:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/filterkit/b/e;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/filterkit/b/f;->b:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a(Ljava/nio/IntBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/filterkit/b/f;->a:Ljava/nio/IntBuffer;

    return-void
.end method

.method public final c()Ljava/nio/IntBuffer;
    .registers 2

    iget-object v0, p0, Lcom/instagram/filterkit/b/f;->a:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public final d()Ljava/nio/FloatBuffer;
    .registers 2

    iget-object v0, p0, Lcom/instagram/filterkit/b/f;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method
