.class public Lch/boye/httpclientandroidlib/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"
.field private static final serialVersionUID:J = -0x4b752af9812a7e9cL
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Exception;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-static {p0, p2}, Lch/boye/httpclientandroidlib/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
return-void
.end method