.class public Lorg/apache/commons/io/output/CloseShieldOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance v0, Lorg/apache/commons/io/output/ClosedOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ClosedOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/CloseShieldOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method
