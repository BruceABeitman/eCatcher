.class public Lorg/apache/commons/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"
.field public static final CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;
invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
sput-object v0, Lorg/apache/commons/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lorg/apache/commons/io/input/ClosedInputStream;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
return-void
.end method
.method public read()I
.registers 2
const/4 v0, -0x1
return v0
.end method