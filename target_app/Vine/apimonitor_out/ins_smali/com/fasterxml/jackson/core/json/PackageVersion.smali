.class public final Lcom/fasterxml/jackson/core/json/PackageVersion;
.super Ljava/lang/Object;
.source "PackageVersion.java"
.implements Lcom/fasterxml/jackson/core/Versioned;
.field public static final VERSION:Lcom/fasterxml/jackson/core/Version;
.method static constructor <clinit>()V
.registers 3
const-string v0, "2.3.4"
const-string v1, "com.fasterxml.jackson.core"
const-string v2, "jackson-core"
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/core/json/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/json/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;
return-object v0
.end method