.class public final Lcom/fasterxml/jackson/a/d/f;
.super Ljava/lang/Object;
.source "PackageVersion.java"
.implements Lcom/fasterxml/jackson/a/x;
.field public static final a:Lcom/fasterxml/jackson/a/w;
.method static constructor <clinit>()V
.registers 3
const-string v0, "2.2.3"
const-string v1, "com.fasterxml.jackson.core"
const-string v2, "jackson-core"
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/a/w;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;
return-void
.end method
.method public final version()Lcom/fasterxml/jackson/a/w;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;
return-object v0
.end method