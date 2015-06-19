.class public final Lcom/facebook/d/b/i;
.super Ljava/lang/Exception;
.source "SoftErrorException.java"
.implements Lcom/facebook/a/p;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "soft error"
return-object v0
.end method