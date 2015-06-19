.class public final Lcom/instagram/cliffjumper/util/a;
.super Ljava/lang/Object;
.source "FilterVertices.java"


# instance fields
.field public final a:Ljava/nio/FloatBuffer;

.field public final b:Ljava/nio/FloatBuffer;

.field public final c:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    iput-object p2, p0, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    iput-object p3, p0, Lcom/instagram/cliffjumper/util/a;->c:Ljava/nio/FloatBuffer;

    return-void
.end method
