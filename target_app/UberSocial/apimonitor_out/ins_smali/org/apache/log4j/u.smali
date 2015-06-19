.class public abstract Lorg/apache/log4j/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/o;
.field public static final h:Ljava/lang/String;
.field public static final i:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "line.separator"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lorg/apache/log4j/u;->h:Ljava/lang/String;
sget-object v0, Lorg/apache/log4j/u;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sput v0, Lorg/apache/log4j/u;->i:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.end method
.method public abstract b()Z
.end method
.method public d()Ljava/lang/String;
.registers 2
const-string v0, "text/plain"
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method